// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Query _$QueryFromJson(Map<String, dynamic> json) {
  return _Query.fromJson(json);
}

/// @nodoc
mixin _$Query {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get channels => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get dateFrom => throw _privateConstructorUsedError;
  DateTime get dateTo => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  List<TwitchClip> get allClips => throw _privateConstructorUsedError;
  List<TwitchClip> get approvedClips => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueryCopyWith<Query> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryCopyWith<$Res> {
  factory $QueryCopyWith(Query value, $Res Function(Query) then) =
      _$QueryCopyWithImpl<$Res, Query>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> channels,
      String? category,
      DateTime createdAt,
      DateTime dateFrom,
      DateTime dateTo,
      int? count,
      List<TwitchClip> allClips,
      List<TwitchClip> approvedClips});
}

/// @nodoc
class _$QueryCopyWithImpl<$Res, $Val extends Query>
    implements $QueryCopyWith<$Res> {
  _$QueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? channels = null,
    Object? category = freezed,
    Object? createdAt = null,
    Object? dateFrom = null,
    Object? dateTo = null,
    Object? count = freezed,
    Object? allClips = null,
    Object? approvedClips = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      channels: null == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateFrom: null == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateTo: null == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      allClips: null == allClips
          ? _value.allClips
          : allClips // ignore: cast_nullable_to_non_nullable
              as List<TwitchClip>,
      approvedClips: null == approvedClips
          ? _value.approvedClips
          : approvedClips // ignore: cast_nullable_to_non_nullable
              as List<TwitchClip>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QueryCopyWith<$Res> implements $QueryCopyWith<$Res> {
  factory _$$_QueryCopyWith(_$_Query value, $Res Function(_$_Query) then) =
      __$$_QueryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> channels,
      String? category,
      DateTime createdAt,
      DateTime dateFrom,
      DateTime dateTo,
      int? count,
      List<TwitchClip> allClips,
      List<TwitchClip> approvedClips});
}

/// @nodoc
class __$$_QueryCopyWithImpl<$Res> extends _$QueryCopyWithImpl<$Res, _$_Query>
    implements _$$_QueryCopyWith<$Res> {
  __$$_QueryCopyWithImpl(_$_Query _value, $Res Function(_$_Query) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? channels = null,
    Object? category = freezed,
    Object? createdAt = null,
    Object? dateFrom = null,
    Object? dateTo = null,
    Object? count = freezed,
    Object? allClips = null,
    Object? approvedClips = null,
  }) {
    return _then(_$_Query(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateFrom: null == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateTo: null == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      allClips: null == allClips
          ? _value._allClips
          : allClips // ignore: cast_nullable_to_non_nullable
              as List<TwitchClip>,
      approvedClips: null == approvedClips
          ? _value._approvedClips
          : approvedClips // ignore: cast_nullable_to_non_nullable
              as List<TwitchClip>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Query implements _Query {
  _$_Query(
      {required this.id,
      required this.name,
      required final List<String> channels,
      this.category,
      required this.createdAt,
      required this.dateFrom,
      required this.dateTo,
      this.count,
      final List<TwitchClip> allClips = const [],
      final List<TwitchClip> approvedClips = const []})
      : _channels = channels,
        _allClips = allClips,
        _approvedClips = approvedClips;

  factory _$_Query.fromJson(Map<String, dynamic> json) =>
      _$$_QueryFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<String> _channels;
  @override
  List<String> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  @override
  final String? category;
  @override
  final DateTime createdAt;
  @override
  final DateTime dateFrom;
  @override
  final DateTime dateTo;
  @override
  final int? count;
  final List<TwitchClip> _allClips;
  @override
  @JsonKey()
  List<TwitchClip> get allClips {
    if (_allClips is EqualUnmodifiableListView) return _allClips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allClips);
  }

  final List<TwitchClip> _approvedClips;
  @override
  @JsonKey()
  List<TwitchClip> get approvedClips {
    if (_approvedClips is EqualUnmodifiableListView) return _approvedClips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_approvedClips);
  }

  @override
  String toString() {
    return 'Query(id: $id, name: $name, channels: $channels, category: $category, createdAt: $createdAt, dateFrom: $dateFrom, dateTo: $dateTo, count: $count, allClips: $allClips, approvedClips: $approvedClips)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Query &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._channels, _channels) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.dateFrom, dateFrom) ||
                other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._allClips, _allClips) &&
            const DeepCollectionEquality()
                .equals(other._approvedClips, _approvedClips));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_channels),
      category,
      createdAt,
      dateFrom,
      dateTo,
      count,
      const DeepCollectionEquality().hash(_allClips),
      const DeepCollectionEquality().hash(_approvedClips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryCopyWith<_$_Query> get copyWith =>
      __$$_QueryCopyWithImpl<_$_Query>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueryToJson(
      this,
    );
  }
}

abstract class _Query implements Query {
  factory _Query(
      {required final String id,
      required final String name,
      required final List<String> channels,
      final String? category,
      required final DateTime createdAt,
      required final DateTime dateFrom,
      required final DateTime dateTo,
      final int? count,
      final List<TwitchClip> allClips,
      final List<TwitchClip> approvedClips}) = _$_Query;

  factory _Query.fromJson(Map<String, dynamic> json) = _$_Query.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<String> get channels;
  @override
  String? get category;
  @override
  DateTime get createdAt;
  @override
  DateTime get dateFrom;
  @override
  DateTime get dateTo;
  @override
  int? get count;
  @override
  List<TwitchClip> get allClips;
  @override
  List<TwitchClip> get approvedClips;
  @override
  @JsonKey(ignore: true)
  _$$_QueryCopyWith<_$_Query> get copyWith =>
      throw _privateConstructorUsedError;
}
