// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClipsResponse _$ClipsResponseFromJson(Map<String, dynamic> json) {
  return _ClipsResponse.fromJson(json);
}

/// @nodoc
mixin _$ClipsResponse {
  List<TwitchClip> get data => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClipsResponseCopyWith<ClipsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipsResponseCopyWith<$Res> {
  factory $ClipsResponseCopyWith(
          ClipsResponse value, $Res Function(ClipsResponse) then) =
      _$ClipsResponseCopyWithImpl<$Res, ClipsResponse>;
  @useResult
  $Res call({List<TwitchClip> data, Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$ClipsResponseCopyWithImpl<$Res, $Val extends ClipsResponse>
    implements $ClipsResponseCopyWith<$Res> {
  _$ClipsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchClip>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClipsResponseCopyWith<$Res>
    implements $ClipsResponseCopyWith<$Res> {
  factory _$$_ClipsResponseCopyWith(
          _$_ClipsResponse value, $Res Function(_$_ClipsResponse) then) =
      __$$_ClipsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchClip> data, Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_ClipsResponseCopyWithImpl<$Res>
    extends _$ClipsResponseCopyWithImpl<$Res, _$_ClipsResponse>
    implements _$$_ClipsResponseCopyWith<$Res> {
  __$$_ClipsResponseCopyWithImpl(
      _$_ClipsResponse _value, $Res Function(_$_ClipsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_$_ClipsResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchClip>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClipsResponse implements _ClipsResponse {
  _$_ClipsResponse({required final List<TwitchClip> data, this.pagination})
      : _data = data;

  factory _$_ClipsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ClipsResponseFromJson(json);

  final List<TwitchClip> _data;
  @override
  List<TwitchClip> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Pagination? pagination;

  @override
  String toString() {
    return 'ClipsResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClipsResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClipsResponseCopyWith<_$_ClipsResponse> get copyWith =>
      __$$_ClipsResponseCopyWithImpl<_$_ClipsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClipsResponseToJson(
      this,
    );
  }
}

abstract class _ClipsResponse implements ClipsResponse {
  factory _ClipsResponse(
      {required final List<TwitchClip> data,
      final Pagination? pagination}) = _$_ClipsResponse;

  factory _ClipsResponse.fromJson(Map<String, dynamic> json) =
      _$_ClipsResponse.fromJson;

  @override
  List<TwitchClip> get data;
  @override
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_ClipsResponseCopyWith<_$_ClipsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

TwitchClip _$TwitchClipFromJson(Map<String, dynamic> json) {
  return _TwitchClip.fromJson(json);
}

/// @nodoc
mixin _$TwitchClip {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'embed_url')
  String get embedUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'broadcaster_id')
  String get broadcasterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'broadcaster_name')
  String get broadcasterName => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_id')
  String get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_name')
  String get creatorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_id')
  String get videoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_id')
  String get gameId => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_count')
  int get viewCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl => throw _privateConstructorUsedError;
  double get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'vod_offset')
  int? get vodOffset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchClipCopyWith<TwitchClip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchClipCopyWith<$Res> {
  factory $TwitchClipCopyWith(
          TwitchClip value, $Res Function(TwitchClip) then) =
      _$TwitchClipCopyWithImpl<$Res, TwitchClip>;
  @useResult
  $Res call(
      {String id,
      String url,
      @JsonKey(name: 'embed_url') String embedUrl,
      @JsonKey(name: 'broadcaster_id') String broadcasterId,
      @JsonKey(name: 'broadcaster_name') String broadcasterName,
      @JsonKey(name: 'creator_id') String creatorId,
      @JsonKey(name: 'creator_name') String creatorName,
      @JsonKey(name: 'video_id') String videoId,
      @JsonKey(name: 'game_id') String gameId,
      String language,
      String title,
      @JsonKey(name: 'view_count') int viewCount,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      double duration,
      @JsonKey(name: 'vod_offset') int? vodOffset});
}

/// @nodoc
class _$TwitchClipCopyWithImpl<$Res, $Val extends TwitchClip>
    implements $TwitchClipCopyWith<$Res> {
  _$TwitchClipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? embedUrl = null,
    Object? broadcasterId = null,
    Object? broadcasterName = null,
    Object? creatorId = null,
    Object? creatorName = null,
    Object? videoId = null,
    Object? gameId = null,
    Object? language = null,
    Object? title = null,
    Object? viewCount = null,
    Object? createdAt = null,
    Object? thumbnailUrl = null,
    Object? duration = null,
    Object? vodOffset = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      embedUrl: null == embedUrl
          ? _value.embedUrl
          : embedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterName: null == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      creatorName: null == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      vodOffset: freezed == vodOffset
          ? _value.vodOffset
          : vodOffset // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TwitchClipCopyWith<$Res>
    implements $TwitchClipCopyWith<$Res> {
  factory _$$_TwitchClipCopyWith(
          _$_TwitchClip value, $Res Function(_$_TwitchClip) then) =
      __$$_TwitchClipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String url,
      @JsonKey(name: 'embed_url') String embedUrl,
      @JsonKey(name: 'broadcaster_id') String broadcasterId,
      @JsonKey(name: 'broadcaster_name') String broadcasterName,
      @JsonKey(name: 'creator_id') String creatorId,
      @JsonKey(name: 'creator_name') String creatorName,
      @JsonKey(name: 'video_id') String videoId,
      @JsonKey(name: 'game_id') String gameId,
      String language,
      String title,
      @JsonKey(name: 'view_count') int viewCount,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      double duration,
      @JsonKey(name: 'vod_offset') int? vodOffset});
}

/// @nodoc
class __$$_TwitchClipCopyWithImpl<$Res>
    extends _$TwitchClipCopyWithImpl<$Res, _$_TwitchClip>
    implements _$$_TwitchClipCopyWith<$Res> {
  __$$_TwitchClipCopyWithImpl(
      _$_TwitchClip _value, $Res Function(_$_TwitchClip) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? embedUrl = null,
    Object? broadcasterId = null,
    Object? broadcasterName = null,
    Object? creatorId = null,
    Object? creatorName = null,
    Object? videoId = null,
    Object? gameId = null,
    Object? language = null,
    Object? title = null,
    Object? viewCount = null,
    Object? createdAt = null,
    Object? thumbnailUrl = null,
    Object? duration = null,
    Object? vodOffset = freezed,
  }) {
    return _then(_$_TwitchClip(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      embedUrl: null == embedUrl
          ? _value.embedUrl
          : embedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterName: null == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      creatorName: null == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      vodOffset: freezed == vodOffset
          ? _value.vodOffset
          : vodOffset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TwitchClip implements _TwitchClip {
  _$_TwitchClip(
      {required this.id,
      required this.url,
      @JsonKey(name: 'embed_url') required this.embedUrl,
      @JsonKey(name: 'broadcaster_id') required this.broadcasterId,
      @JsonKey(name: 'broadcaster_name') required this.broadcasterName,
      @JsonKey(name: 'creator_id') required this.creatorId,
      @JsonKey(name: 'creator_name') required this.creatorName,
      @JsonKey(name: 'video_id') required this.videoId,
      @JsonKey(name: 'game_id') required this.gameId,
      required this.language,
      required this.title,
      @JsonKey(name: 'view_count') required this.viewCount,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'thumbnail_url') required this.thumbnailUrl,
      required this.duration,
      @JsonKey(name: 'vod_offset') this.vodOffset});

  factory _$_TwitchClip.fromJson(Map<String, dynamic> json) =>
      _$$_TwitchClipFromJson(json);

  @override
  final String id;
  @override
  final String url;
  @override
  @JsonKey(name: 'embed_url')
  final String embedUrl;
  @override
  @JsonKey(name: 'broadcaster_id')
  final String broadcasterId;
  @override
  @JsonKey(name: 'broadcaster_name')
  final String broadcasterName;
  @override
  @JsonKey(name: 'creator_id')
  final String creatorId;
  @override
  @JsonKey(name: 'creator_name')
  final String creatorName;
  @override
  @JsonKey(name: 'video_id')
  final String videoId;
  @override
  @JsonKey(name: 'game_id')
  final String gameId;
  @override
  final String language;
  @override
  final String title;
  @override
  @JsonKey(name: 'view_count')
  final int viewCount;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'thumbnail_url')
  final String thumbnailUrl;
  @override
  final double duration;
  @override
  @JsonKey(name: 'vod_offset')
  final int? vodOffset;

  @override
  String toString() {
    return 'TwitchClip(id: $id, url: $url, embedUrl: $embedUrl, broadcasterId: $broadcasterId, broadcasterName: $broadcasterName, creatorId: $creatorId, creatorName: $creatorName, videoId: $videoId, gameId: $gameId, language: $language, title: $title, viewCount: $viewCount, createdAt: $createdAt, thumbnailUrl: $thumbnailUrl, duration: $duration, vodOffset: $vodOffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwitchClip &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.embedUrl, embedUrl) ||
                other.embedUrl == embedUrl) &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.broadcasterName, broadcasterName) ||
                other.broadcasterName == broadcasterName) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.creatorName, creatorName) ||
                other.creatorName == creatorName) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.vodOffset, vodOffset) ||
                other.vodOffset == vodOffset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      url,
      embedUrl,
      broadcasterId,
      broadcasterName,
      creatorId,
      creatorName,
      videoId,
      gameId,
      language,
      title,
      viewCount,
      createdAt,
      thumbnailUrl,
      duration,
      vodOffset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TwitchClipCopyWith<_$_TwitchClip> get copyWith =>
      __$$_TwitchClipCopyWithImpl<_$_TwitchClip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TwitchClipToJson(
      this,
    );
  }
}

abstract class _TwitchClip implements TwitchClip {
  factory _TwitchClip(
      {required final String id,
      required final String url,
      @JsonKey(name: 'embed_url') required final String embedUrl,
      @JsonKey(name: 'broadcaster_id') required final String broadcasterId,
      @JsonKey(name: 'broadcaster_name') required final String broadcasterName,
      @JsonKey(name: 'creator_id') required final String creatorId,
      @JsonKey(name: 'creator_name') required final String creatorName,
      @JsonKey(name: 'video_id') required final String videoId,
      @JsonKey(name: 'game_id') required final String gameId,
      required final String language,
      required final String title,
      @JsonKey(name: 'view_count') required final int viewCount,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'thumbnail_url') required final String thumbnailUrl,
      required final double duration,
      @JsonKey(name: 'vod_offset') final int? vodOffset}) = _$_TwitchClip;

  factory _TwitchClip.fromJson(Map<String, dynamic> json) =
      _$_TwitchClip.fromJson;

  @override
  String get id;
  @override
  String get url;
  @override
  @JsonKey(name: 'embed_url')
  String get embedUrl;
  @override
  @JsonKey(name: 'broadcaster_id')
  String get broadcasterId;
  @override
  @JsonKey(name: 'broadcaster_name')
  String get broadcasterName;
  @override
  @JsonKey(name: 'creator_id')
  String get creatorId;
  @override
  @JsonKey(name: 'creator_name')
  String get creatorName;
  @override
  @JsonKey(name: 'video_id')
  String get videoId;
  @override
  @JsonKey(name: 'game_id')
  String get gameId;
  @override
  String get language;
  @override
  String get title;
  @override
  @JsonKey(name: 'view_count')
  int get viewCount;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl;
  @override
  double get duration;
  @override
  @JsonKey(name: 'vod_offset')
  int? get vodOffset;
  @override
  @JsonKey(ignore: true)
  _$$_TwitchClipCopyWith<_$_TwitchClip> get copyWith =>
      throw _privateConstructorUsedError;
}

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  String? get cursor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call({String? cursor});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = freezed,
  }) {
    return _then(_value.copyWith(
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$_PaginationCopyWith(
          _$_Pagination value, $Res Function(_$_Pagination) then) =
      __$$_PaginationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? cursor});
}

/// @nodoc
class __$$_PaginationCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$_Pagination>
    implements _$$_PaginationCopyWith<$Res> {
  __$$_PaginationCopyWithImpl(
      _$_Pagination _value, $Res Function(_$_Pagination) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = freezed,
  }) {
    return _then(_$_Pagination(
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pagination implements _Pagination {
  _$_Pagination({this.cursor});

  factory _$_Pagination.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationFromJson(json);

  @override
  final String? cursor;

  @override
  String toString() {
    return 'Pagination(cursor: $cursor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pagination &&
            (identical(other.cursor, cursor) || other.cursor == cursor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cursor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationCopyWith<_$_Pagination> get copyWith =>
      __$$_PaginationCopyWithImpl<_$_Pagination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationToJson(
      this,
    );
  }
}

abstract class _Pagination implements Pagination {
  factory _Pagination({final String? cursor}) = _$_Pagination;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$_Pagination.fromJson;

  @override
  String? get cursor;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationCopyWith<_$_Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}
