// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Video {
  /// Video ID.
  VideoId get id;

  /// Video title.
  String get title;

  /// Video author.
  String get author;

  /// Video author Id.
  ChannelId get channelId;

  /// Video upload date.
  /// Note: For search queries it is calculated with:
  ///   DateTime.now() - how much time is was published.
  DateTime? get uploadDate;
  String? get uploadDateRaw;

  /// Video publish date.
  DateTime? get publishDate;

  /// Video description.
  String get description;

  /// Duration of the video.
  Duration? get duration;

  /// Available thumbnails for this video.
  ThumbnailSet get thumbnails;

  /// Engagement statistics for this video.
  Engagement get engagement;

  /// Returns true if this is a live stream.
  bool get isLive;

  /// Music data such as song, artist, album, and image.
  /// Empty if no data is available.
  List<MusicData>? get musicData;

  /// Search keywords used for this video.
  List<String>? get keywords;

  /// Used internally.
  /// Shouldn't be used in the code.
  @internal
  WatchPage? get watchPage;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoCopyWith<Video> get copyWith =>
      _$VideoCopyWithImpl<Video>(this as Video, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as Video;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Video &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.title, _this.title) ||
                other.title == _this.title) &&
            (identical(other.author, _this.author) ||
                other.author == _this.author) &&
            (identical(other.channelId, _this.channelId) ||
                other.channelId == _this.channelId) &&
            (identical(other.uploadDate, _this.uploadDate) ||
                other.uploadDate == _this.uploadDate) &&
            (identical(other.uploadDateRaw, _this.uploadDateRaw) ||
                other.uploadDateRaw == _this.uploadDateRaw) &&
            (identical(other.publishDate, _this.publishDate) ||
                other.publishDate == _this.publishDate) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description) &&
            (identical(other.duration, _this.duration) ||
                other.duration == _this.duration) &&
            (identical(other.thumbnails, _this.thumbnails) ||
                other.thumbnails == _this.thumbnails) &&
            (identical(other.engagement, _this.engagement) ||
                other.engagement == _this.engagement) &&
            (identical(other.isLive, _this.isLive) ||
                other.isLive == _this.isLive) &&
            const DeepCollectionEquality()
                .equals(other.musicData, _this.musicData) &&
            const DeepCollectionEquality()
                .equals(other.keywords, _this.keywords) &&
            (identical(other.watchPage, _this.watchPage) ||
                other.watchPage == _this.watchPage));
  }

  @override
  int get hashCode {
    final _this = this as Video;
    return Object.hash(
        runtimeType,
        _this.id,
        _this.title,
        _this.author,
        _this.channelId,
        _this.uploadDate,
        _this.uploadDateRaw,
        _this.publishDate,
        _this.description,
        _this.duration,
        _this.thumbnails,
        _this.engagement,
        _this.isLive,
        const DeepCollectionEquality().hash(_this.musicData),
        const DeepCollectionEquality().hash(_this.keywords),
        _this.watchPage);
  }

  @override
  String toString() {
    final _this = this as Video;
    return 'Video(id: ${_this.id}, title: ${_this.title}, author: ${_this.author}, channelId: ${_this.channelId}, uploadDate: ${_this.uploadDate}, uploadDateRaw: ${_this.uploadDateRaw}, publishDate: ${_this.publishDate}, description: ${_this.description}, duration: ${_this.duration}, thumbnails: ${_this.thumbnails}, engagement: ${_this.engagement}, isLive: ${_this.isLive}, musicData: ${_this.musicData}, keywords: ${_this.keywords}, watchPage: ${_this.watchPage})';
  }
}

/// @nodoc
abstract mixin class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) _then) =
      _$VideoCopyWithImpl;
  @useResult
  $Res call(
      {VideoId id,
      String title,
      String author,
      ChannelId channelId,
      DateTime? uploadDate,
      String? uploadDateRaw,
      DateTime? publishDate,
      String description,
      Duration? duration,
      ThumbnailSet thumbnails,
      Engagement engagement,
      bool isLive,
      List<MusicData>? musicData,
      List<String>? keywords,
      @internal WatchPage? watchPage});

  $VideoIdCopyWith<$Res> get id;
  $ChannelIdCopyWith<$Res> get channelId;
  $ThumbnailSetCopyWith<$Res> get thumbnails;
  $EngagementCopyWith<$Res> get engagement;
}

/// @nodoc
class _$VideoCopyWithImpl<$Res> implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._self, this._then);

  final Video _self;
  final $Res Function(Video) _then;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? channelId = null,
    Object? uploadDate = freezed,
    Object? uploadDateRaw = freezed,
    Object? publishDate = freezed,
    Object? description = null,
    Object? duration = freezed,
    Object? thumbnails = null,
    Object? engagement = null,
    Object? isLive = null,
    Object? musicData = freezed,
    Object? keywords = freezed,
    Object? watchPage = freezed,
  }) {
    return _then(Video(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as VideoId,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: null == channelId
          ? _self.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as ChannelId,
      uploadDate: freezed == uploadDate
          ? _self.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadDateRaw: freezed == uploadDateRaw
          ? _self.uploadDateRaw
          : uploadDateRaw // ignore: cast_nullable_to_non_nullable
              as String?,
      publishDate: freezed == publishDate
          ? _self.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      thumbnails: null == thumbnails
          ? _self.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailSet,
      engagement: null == engagement
          ? _self.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as Engagement,
      isLive: null == isLive
          ? _self.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      musicData: freezed == musicData
          ? _self.musicData
          : musicData // ignore: cast_nullable_to_non_nullable
              as List<MusicData>?,
      keywords: freezed == keywords
          ? _self.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      watchPage: freezed == watchPage
          ? _self.watchPage
          : watchPage // ignore: cast_nullable_to_non_nullable
              as WatchPage?,
    ));
  }

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoIdCopyWith<$Res> get id {
    return $VideoIdCopyWith<$Res>(_self.id, (value) {
      return _then(_self.copyWith(id: value));
    });
  }

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChannelIdCopyWith<$Res> get channelId {
    return $ChannelIdCopyWith<$Res>(_self.channelId, (value) {
      return _then(_self.copyWith(channelId: value));
    });
  }

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThumbnailSetCopyWith<$Res> get thumbnails {
    return $ThumbnailSetCopyWith<$Res>(_self.thumbnails, (value) {
      return _then(_self.copyWith(thumbnails: value));
    });
  }

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EngagementCopyWith<$Res> get engagement {
    return $EngagementCopyWith<$Res>(_self.engagement, (value) {
      return _then(_self.copyWith(engagement: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Video].
extension VideoPatterns on Video {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Video value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Video() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Video value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Video():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Video value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Video() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            VideoId id,
            String title,
            String author,
            ChannelId channelId,
            DateTime? uploadDate,
            String? uploadDateRaw,
            DateTime? publishDate,
            String description,
            Duration? duration,
            ThumbnailSet thumbnails,
            Engagement engagement,
            bool isLive,
            List<MusicData>? musicData,
            List<String>? keywords,
            @internal WatchPage? watchPage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Video() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.author,
            _that.channelId,
            _that.uploadDate,
            _that.uploadDateRaw,
            _that.publishDate,
            _that.description,
            _that.duration,
            _that.thumbnails,
            _that.engagement,
            _that.isLive,
            _that.musicData,
            _that.keywords,
            _that.watchPage);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            VideoId id,
            String title,
            String author,
            ChannelId channelId,
            DateTime? uploadDate,
            String? uploadDateRaw,
            DateTime? publishDate,
            String description,
            Duration? duration,
            ThumbnailSet thumbnails,
            Engagement engagement,
            bool isLive,
            List<MusicData>? musicData,
            List<String>? keywords,
            @internal WatchPage? watchPage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Video():
        return $default(
            _that.id,
            _that.title,
            _that.author,
            _that.channelId,
            _that.uploadDate,
            _that.uploadDateRaw,
            _that.publishDate,
            _that.description,
            _that.duration,
            _that.thumbnails,
            _that.engagement,
            _that.isLive,
            _that.musicData,
            _that.keywords,
            _that.watchPage);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            VideoId id,
            String title,
            String author,
            ChannelId channelId,
            DateTime? uploadDate,
            String? uploadDateRaw,
            DateTime? publishDate,
            String description,
            Duration? duration,
            ThumbnailSet thumbnails,
            Engagement engagement,
            bool isLive,
            List<MusicData>? musicData,
            List<String>? keywords,
            @internal WatchPage? watchPage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Video() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.author,
            _that.channelId,
            _that.uploadDate,
            _that.uploadDateRaw,
            _that.publishDate,
            _that.description,
            _that.duration,
            _that.thumbnails,
            _that.engagement,
            _that.isLive,
            _that.musicData,
            _that.keywords,
            _that.watchPage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Video extends Video {
  const _Video(
      {required this.id,
      required this.title,
      required this.author,
      required this.channelId,
      this.uploadDate,
      this.uploadDateRaw,
      this.publishDate,
      required this.description,
      this.duration,
      required this.thumbnails,
      required this.engagement,
      required this.isLive,
      List<MusicData>? musicData = const [],
      List<String>? keywords = const [],
      @internal this.watchPage})
      : _musicData = musicData,
        _keywords = keywords,
        super._();

  /// Video ID.
  @override
  final VideoId id;

  /// Video title.
  @override
  final String title;

  /// Video author.
  @override
  final String author;

  /// Video author Id.
  @override
  final ChannelId channelId;

  /// Video upload date.
  /// Note: For search queries it is calculated with:
  ///   DateTime.now() - how much time is was published.
  @override
  final DateTime? uploadDate;
  @override
  final String? uploadDateRaw;

  /// Video publish date.
  @override
  final DateTime? publishDate;

  /// Video description.
  @override
  final String description;

  /// Duration of the video.
  @override
  final Duration? duration;

  /// Available thumbnails for this video.
  @override
  final ThumbnailSet thumbnails;

  /// Engagement statistics for this video.
  @override
  final Engagement engagement;

  /// Returns true if this is a live stream.
  @override
  final bool isLive;

  /// Music data such as song, artist, album, and image.
  /// Empty if no data is available.
  final List<MusicData>? _musicData;

  /// Music data such as song, artist, album, and image.
  /// Empty if no data is available.
  @override
  @JsonKey()
  List<MusicData>? get musicData {
    final value = _musicData;
    if (value == null) return null;
    if (_musicData is EqualUnmodifiableListView) return _musicData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Search keywords used for this video.
  final List<String>? _keywords;

  /// Search keywords used for this video.
  @override
  @JsonKey()
  List<String>? get keywords {
    final value = _keywords;
    if (value == null) return null;
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Used internally.
  /// Shouldn't be used in the code.
  @override
  @internal
  final WatchPage? watchPage;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoCopyWith<_Video> get copyWith =>
      __$VideoCopyWithImpl<_Video>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Video &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.uploadDate, uploadDate) ||
                other.uploadDate == uploadDate) &&
            (identical(other.uploadDateRaw, uploadDateRaw) ||
                other.uploadDateRaw == uploadDateRaw) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.thumbnails, thumbnails) ||
                other.thumbnails == thumbnails) &&
            (identical(other.engagement, engagement) ||
                other.engagement == engagement) &&
            (identical(other.isLive, isLive) || other.isLive == isLive) &&
            const DeepCollectionEquality()
                .equals(other.musicData, _musicData) &&
            const DeepCollectionEquality().equals(other.keywords, _keywords) &&
            (identical(other.watchPage, watchPage) ||
                other.watchPage == watchPage));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        id,
        title,
        author,
        channelId,
        uploadDate,
        uploadDateRaw,
        publishDate,
        description,
        duration,
        thumbnails,
        engagement,
        isLive,
        const DeepCollectionEquality().hash(_musicData),
        const DeepCollectionEquality().hash(_keywords),
        watchPage);
  }

  @override
  String toString() {
    return 'Video(id: $id, title: $title, author: $author, channelId: $channelId, uploadDate: $uploadDate, uploadDateRaw: $uploadDateRaw, publishDate: $publishDate, description: $description, duration: $duration, thumbnails: $thumbnails, engagement: $engagement, isLive: $isLive, musicData: $musicData, keywords: $keywords, watchPage: $watchPage)';
  }
}

/// @nodoc
abstract mixin class _$VideoCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$VideoCopyWith(_Video value, $Res Function(_Video) _then) =
      __$VideoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {VideoId id,
      String title,
      String author,
      ChannelId channelId,
      DateTime? uploadDate,
      String? uploadDateRaw,
      DateTime? publishDate,
      String description,
      Duration? duration,
      ThumbnailSet thumbnails,
      Engagement engagement,
      bool isLive,
      List<MusicData>? musicData,
      List<String>? keywords,
      @internal WatchPage? watchPage});

  @override
  $VideoIdCopyWith<$Res> get id;
  @override
  $ChannelIdCopyWith<$Res> get channelId;
  @override
  $ThumbnailSetCopyWith<$Res> get thumbnails;
  @override
  $EngagementCopyWith<$Res> get engagement;
}

/// @nodoc
class __$VideoCopyWithImpl<$Res> implements _$VideoCopyWith<$Res> {
  __$VideoCopyWithImpl(this._self, this._then);

  final _Video _self;
  final $Res Function(_Video) _then;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? channelId = null,
    Object? uploadDate = freezed,
    Object? uploadDateRaw = freezed,
    Object? publishDate = freezed,
    Object? description = null,
    Object? duration = freezed,
    Object? thumbnails = null,
    Object? engagement = null,
    Object? isLive = null,
    Object? musicData = freezed,
    Object? keywords = freezed,
    Object? watchPage = freezed,
  }) {
    return _then(_Video(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as VideoId,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: null == channelId
          ? _self.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as ChannelId,
      uploadDate: freezed == uploadDate
          ? _self.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadDateRaw: freezed == uploadDateRaw
          ? _self.uploadDateRaw
          : uploadDateRaw // ignore: cast_nullable_to_non_nullable
              as String?,
      publishDate: freezed == publishDate
          ? _self.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      thumbnails: null == thumbnails
          ? _self.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailSet,
      engagement: null == engagement
          ? _self.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as Engagement,
      isLive: null == isLive
          ? _self.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      musicData: freezed == musicData
          ? _self._musicData
          : musicData // ignore: cast_nullable_to_non_nullable
              as List<MusicData>?,
      keywords: freezed == keywords
          ? _self._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      watchPage: freezed == watchPage
          ? _self.watchPage
          : watchPage // ignore: cast_nullable_to_non_nullable
              as WatchPage?,
    ));
  }

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoIdCopyWith<$Res> get id {
    return $VideoIdCopyWith<$Res>(_self.id, (value) {
      return _then(_self.copyWith(id: value));
    });
  }

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChannelIdCopyWith<$Res> get channelId {
    return $ChannelIdCopyWith<$Res>(_self.channelId, (value) {
      return _then(_self.copyWith(channelId: value));
    });
  }

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThumbnailSetCopyWith<$Res> get thumbnails {
    return $ThumbnailSetCopyWith<$Res>(_self.thumbnails, (value) {
      return _then(_self.copyWith(thumbnails: value));
    });
  }

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EngagementCopyWith<$Res> get engagement {
    return $EngagementCopyWith<$Res>(_self.engagement, (value) {
      return _then(_self.copyWith(engagement: value));
    });
  }
}

// dart format on
