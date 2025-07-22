import '../channels/channel_id.dart';
import '../common/common.dart';
import '../extensions/helpers_extension.dart';
import '../common/page_language.dart';
import '../reverse_engineering/pages/playlist_page.dart';
import '../reverse_engineering/youtube_http_client.dart';
import '../videos/video.dart';
import '../videos/video_id.dart';
import 'playlist.dart';
import 'playlist_id.dart';

/// Queries related to YouTube playlists.
class PlaylistClient {
  final YoutubeHttpClient _httpClient;

  /// Initializes an instance of [PlaylistClient]
  PlaylistClient(this._httpClient);

  /// Gets the metadata associated with the specified playlist.
  Future<Playlist> get(dynamic id,
      [PageLanguage lang = PageLanguage.en]) async {
    id = PlaylistId.fromString(id);

    final response =
        await PlaylistPage.get(_httpClient, (id as PlaylistId).value, lang);
    return Playlist(
      id,
      response.title ?? '',
      response.author ?? '',
      response.description ?? '',
      ThumbnailSet(id.value),
      Engagement(response.viewCount ?? 0, null, null),
      response.videoCount,
    );
  }

  /// Enumerates videos included in the specified playlist.
  Stream<Video> getVideos(dynamic id,
      [PageLanguage lang = PageLanguage.en]) async* {
    id = PlaylistId.fromString(id);
    final encounteredVideoIds = <String>{};
    var prevLength = 0;
    PlaylistPage? page = await PlaylistPage.get(_httpClient, id.value, lang);

    while (page != null) {
      for (final video in page.videos) {
        final videoId = video.id;

        // Already added
        if (!encounteredVideoIds.add(videoId)) {
          continue;
        }

        if (video.channelId.isEmpty) {
          continue;
        }

        yield Video(
          VideoId(videoId),
          video.title,
          video.author,
          ChannelId(video.channelId),
          video.uploadDateRaw.toDateTime(lang),
          video.uploadDateRaw,
          null,
          video.description,
          video.duration,
          ThumbnailSet(videoId),
          null,
          Engagement(video.viewCount, null, null),
          false,
        );
      }
      if (encounteredVideoIds.length == prevLength) {
        break;
      }
      prevLength = encounteredVideoIds.length;
      page = await page.nextPage(_httpClient, lang);
    }
  }
}
