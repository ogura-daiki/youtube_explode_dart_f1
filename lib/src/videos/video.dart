import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../channels/channel_id.dart';
import '../common/common.dart';
import '../reverse_engineering/pages/watch_page.dart';
import 'video_id.dart';

part 'video.freezed.dart';

typedef MusicData = ({String? song, String? artist, String? album, Uri? image});

/// YouTube video metadata.
@freezed
abstract class Video with _$Video {
  /// Video URL.
  String get url => 'https://www.youtube.com/watch?v=$id';

  /// Returns true if the watch page is available for this video.
  bool get hasWatchPage => watchPage != null;

  /// Initializes an instance of [Video]
  const factory Video({
    /// Video ID.
    required VideoId id,

    /// Video title.
    required String title,

    /// Video author.
    required String author,

    /// Video author Id.
    required ChannelId channelId,

    /// Video upload date.
    /// Note: For search queries it is calculated with:
    ///   DateTime.now() - how much time is was published.
    DateTime? uploadDate,
    String? uploadDateRaw,

    /// Video publish date.
    DateTime? publishDate,

    /// Video description.
    required String description,

    /// Duration of the video.
    Duration? duration,

    /// Available thumbnails for this video.
    required ThumbnailSet thumbnails,

    /// Engagement statistics for this video.
    required Engagement engagement,

    /// Returns true if this is a live stream.
    //ignore: avoid_positional_boolean_parameters
    required bool isLive,

    /// Music data such as song, artist, album, and image.
    /// Empty if no data is available.
    @Default([]) List<MusicData>? musicData,

    /// Search keywords used for this video.
    @Default([]) List<String>? keywords,

    /// Used internally.
    /// Shouldn't be used in the code.
    @internal WatchPage? watchPage,
    
  }) = _Video;

  const Video._();
}
