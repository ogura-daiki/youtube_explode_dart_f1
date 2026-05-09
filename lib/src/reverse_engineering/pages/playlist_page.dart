import 'package:collection/collection.dart';
import 'package:html/parser.dart' as parser;

import '../../../youtube_explode_dart.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../models/initial_data.dart';
import '../models/youtube_page.dart';
import '../youtube_http_client.dart';

///
class PlaylistPage extends YoutubePage<_InitialData> {
  ///
  final String playlistId;

  final String? _visitorData;

  late final List<_Video> videos = initialData.playlistVideos;

  late final String? title = initialData.title;

  late final String? description = initialData.description;

  late final String? author = initialData.author;

  late final int? viewCount = initialData.viewCount;

  late final int? videoCount = initialData.videoCount;

  /// InitialData
  PlaylistPage.id(this.playlistId, _InitialData initialData,
      [this._visitorData])
      : super.fromInitialData(initialData);

  ///
  Future<PlaylistPage?> nextPage(YoutubeHttpClient httpClient) async {
    if (initialData.continuationToken?.isEmpty ?? true) {
      return null;
    }

    final data = await httpClient.sendContinuation(
        'browse', initialData.continuationToken!, headers: {
      'x-youtube-client-name': '1',
      'x-goog-visitor-id': _visitorData ?? ''
    });
    final newInitialData = _InitialData(data);
    if (newInitialData.continuationToken != null &&
        newInitialData.continuationToken == initialData.continuationToken) {
      // Avoid sending always the same request.
      return null;
    }

    return PlaylistPage.id(playlistId, _InitialData(data), _visitorData);
  }

  ///
  static Future<PlaylistPage> get(
    YoutubeHttpClient httpClient,
    String id,
  ) async {
    final url = 'https://www.youtube.com/playlist?list=$id&hl=en&persist_hl=1';
    return retry(httpClient, () async {
      final raw = await httpClient.getString(url);
      final page = PlaylistPage.parse(raw, id);
      if (page.initialData.exists) {
        return page;
      }

      // Try to fetch using the browse API
      final data = await httpClient.sendPost('browse', {
        'browseId': page.initialData.browseId!,
      }, headers: {
        'x-youtube-client-name': '1',
        'x-goog-visitor-id': page.initialData.visitorData ?? '',
      });
      return PlaylistPage.id(
          id, _InitialData(data), page.initialData.visitorData);
    });
  }

  ///
  PlaylistPage.parse(String raw, this.playlistId)
      : _visitorData = null,
        super(parser.parse(raw), (root) => _InitialData(root));
}

class _InitialData extends InitialData {
  _InitialData(super.root);

  String? get visitorData => root.getJson<String>(
      'responseContext/webResponseContextExtensionData/ytConfigData/visitorData');

  String? get browseId {
    final params = root.getJson<List<dynamic>>(
      'responseContext/serviceTrackingParams',
    );
    final gfeedback = params
        ?.firstWhereOrNull((e) => e['service'] == 'GFEEDBACK') as JsonMap?;
    final paramList = gfeedback?.getJson<List<dynamic>>('params');
    final browseIdParam =
        paramList?.firstWhereOrNull((e) => e['key'] == 'browse_id') as JsonMap?;
    return browseIdParam?.getT<String>('value');
  }

  bool get exists =>
      root.getJson<String>('alerts/0/alertRenderer/type') != 'ERROR';

  late final String? title =
      root.getJson<String>('metadata/playlistMetadataRenderer/title');

  late final String? author = (root
          .getJson<List<dynamic>>('sidebar/playlistSidebarRenderer/items')
          ?.elementAtSafe(1) as JsonMap?)
      ?.getJson<List<dynamic>>(
        'playlistSidebarSecondaryInfoRenderer/videoOwner/videoOwnerRenderer/title/runs',
      )
      ?.cast<Map<dynamic, dynamic>>()
      .parseRuns();

  late final String? description =
      root.getJson<String>('metadata/playlistMetadataRenderer/description');

  late final int? viewCount = ((root
              .getJson<List<dynamic>>('sidebar/playlistSidebarRenderer/items')
              ?.firstOrNull as JsonMap?)
          ?.getJson<List<dynamic>>(
            'playlistSidebarPrimaryInfoRenderer/stats',
          )
          ?.elementAtSafe(1) as JsonMap?)
      ?.getT<String>('simpleText')
      .parseInt();

  // sidebar.playlistSidebarRenderer.items[0].playlistSidebarPrimaryInfoRenderer.stats
  late final int? videoCount = ((root
              .getJson<List<dynamic>>('sidebar/playlistSidebarRenderer/items')
              ?.firstOrNull as JsonMap?)
          ?.getJson<List<dynamic>>('playlistSidebarPrimaryInfoRenderer/stats')
          ?.elementAtSafe(0) as JsonMap?)
      ?.getJson<List<dynamic>>('runs')
      ?.firstOrNull
      ?.getT<String>('text')
      .parseInt();

  String? get continuationToken {
    final continuationItem = (videosContent ?? playlistVideosContent)
        ?.firstWhereOrNull((e) => e['continuationItemRenderer'] != null);
    final continuationEndpoint = continuationItem?.getJson<JsonMap>(
      'continuationItemRenderer/continuationEndpoint',
    );

    return continuationEndpoint?.getJson<String>('continuationCommand/token') ??
        (continuationEndpoint
                    ?.getJson<List<dynamic>>('commandExecutorCommand/commands')
                    ?.firstWhereOrNull((e) => e['continuationCommand'] != null)
                as JsonMap?)
            ?.getJson<String>('continuationCommand/token');
  }

  List<JsonMap>? get playlistVideosContent {
    final fromActions = root
        .getJson<List<dynamic>>('onResponseReceivedActions')
        ?.firstOrNull as JsonMap?;
    final continuationItems = fromActions?.getJson<List<dynamic>>(
      'appendContinuationItemsAction/continuationItems',
    );
    if (continuationItems != null) {
      return continuationItems.cast<JsonMap>();
    }
    final tabs = root.getJson<List<dynamic>>(
      'contents/twoColumnBrowseResultsRenderer/tabs',
    );
    final firstTab = tabs?.firstOrNull as JsonMap?;
    final sectionContents = firstTab?.getJson<List<dynamic>>(
      'tabRenderer/content/sectionListRenderer/contents',
    );
    final firstSection = sectionContents?.firstOrNull as JsonMap?;
    final itemContents = firstSection?.getJson<List<dynamic>>(
      'itemSectionRenderer/contents',
    );
    final firstItem = itemContents?.firstOrNull as JsonMap?;
    final contents = firstItem?.getJson<List<dynamic>>(
      'playlistVideoListRenderer/contents',
    );
    return contents?.cast<JsonMap>();
  }

  late final List<JsonMap>? videosContent = root
          .getJson<List<dynamic>>(
            'contents/twoColumnSearchResultsRenderer/primaryContents/sectionListRenderer/contents',
          )
          ?.cast<JsonMap>() ??
      (root.getJson<List<dynamic>>('onResponseReceivedCommands')?.firstOrNull
              as JsonMap?)
          ?.getJson<List<dynamic>>(
            'appendContinuationItemsAction/continuationItems',
          )
          ?.cast<JsonMap>();

  List<_Video> get playlistVideos =>
      playlistVideosContent
          ?.where((e) => e['playlistVideoRenderer'] != null)
          .map((e) => _Video(e['playlistVideoRenderer']))
          .toList() ??
      const [];

/*  List<_Video> get videos =>
      (videosContent?.firstOrNull as JsonMap?)
          ?.getJson<List<dynamic>>('itemSectionRenderer/contents')
          ?.where((e) => e['videoRenderer'] != null)
          .map((e) => _Video(e))
          .toList() ??
      const [];*/
}

class _Video {
  // Json parsed map
  final JsonMap root;

  _Video(this.root);

  String get id => root.getT<String>('videoId')!;

  String get author =>
      root
          .getJson<List<dynamic>>('ownerText/runs')
          ?.cast<Map<dynamic, dynamic>>()
          .parseRuns() ??
      root
          .getJson<List<dynamic>>('shortBylineText/runs')
          ?.cast<Map<dynamic, dynamic>>()
          .parseRuns() ??
      '';

  String get channelId {
    return root.getJson<String>(
          'ownerText/runs/0/navigationEndpoint/browseEndpoint/browseId',
        ) ??
        root.getJson<String>(
          'shortBylineText/runs/0/navigationEndpoint/browseEndpoint/browseId',
        ) ??
        root.getJson<String>(
          'shortBylineText/runs/0/navigationEndpoint/showDialogCommand/panelLoadingStrategy/inlineContent/dialogViewModel/customContent/listViewModel/listItems/0/listItemViewModel/rendererContext/commandContext/onTap/innertubeCommand/browseEndpoint/browseId',
        ) ??
        '';
  }

  String get title =>
      root
          .getJson<List<dynamic>>('title/runs')
          ?.cast<Map<dynamic, dynamic>>()
          .parseRuns() ??
      '';

  String get description =>
      root
          .getJson<List<dynamic>>('descriptionSnippet')
          ?.cast<Map<dynamic, dynamic>>()
          .parseRuns() ??
      '';

  Duration? get duration =>
      root.getJson<String>('lengthText/simpleText')?.toDuration();

  int get viewCount =>
      root.getJson<String>('viewCountText/simpleText').parseInt() ??
      _videoInfo?.split('•').elementAtSafe(0)?.stripNonDigits().parseInt() ??
      0;

  String? get uploadDateRaw => _videoInfo?.split('•').elementAtSafe(1);

  String? get _videoInfo => root
      .getJson<List<dynamic>>('videoInfo/runs')
      ?.cast<Map<dynamic, dynamic>>()
      .parseRuns();
}
