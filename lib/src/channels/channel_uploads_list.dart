import 'dart:async';

import '../../youtube_explode_dart.dart';
import '../extensions/helpers_extension.dart';
import '../reverse_engineering/pages/channel_upload_page.dart';

/// This list contains a channel uploads.
/// This behaves like a [List] but has the [SearchList.nextPage] to get the next batch of videos.
class ChannelUploadsList extends BasePagedList<Video> {
  final ChannelUploadPage _page;
  final YoutubeHttpClient _httpClient;

  final String author;
  final ChannelId channel;

  /// Construct an instance of [SearchList]
  /// See [SearchList]
  ChannelUploadsList(
    super.base,
    this.author,
    this.channel,
    this._page,
    this._httpClient,
  );

  /// Fetches the next batch of videos or returns null if there are no more
  /// results.
  @override
  Future<ChannelUploadsList?> nextPage() async {
    final page = await _page.nextPage(_httpClient);
    if (page == null) {
      return null;
    }
    return ChannelUploadsList(
      page.uploads
          .map(
            (e) => Video(
              id: e.videoId,
              title: e.videoTitle,
              author: author,
              channelId: channel,
              uploadDate: e.videoUploadDate.toDateTime(),
              uploadDateRaw: e.videoUploadDate,
              description: '',
              duration: e.videoDuration,
              thumbnails: ThumbnailSet(e.videoId.value),
              engagement: Engagement(e.videoViews, null, null),
              isLive: false,
            ),
          )
          .toList(),
      author,
      channel,
      page,
      _httpClient,
    );
  }
}
