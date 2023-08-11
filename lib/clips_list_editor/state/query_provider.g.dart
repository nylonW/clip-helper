// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Query _$$_QueryFromJson(Map<String, dynamic> json) => _$_Query(
      id: json['id'] as String,
      name: json['name'] as String,
      channels:
          (json['channels'] as List<dynamic>).map((e) => e as String).toList(),
      category: json['category'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      dateFrom: DateTime.parse(json['dateFrom'] as String),
      dateTo: DateTime.parse(json['dateTo'] as String),
      count: json['count'] as int?,
      allClips: (json['allClips'] as List<dynamic>?)
              ?.map((e) => TwitchClip.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      approvedClips: (json['approvedClips'] as List<dynamic>?)
              ?.map((e) => TwitchClip.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_QueryToJson(_$_Query instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'channels': instance.channels,
      'category': instance.category,
      'createdAt': instance.createdAt.toIso8601String(),
      'dateFrom': instance.dateFrom.toIso8601String(),
      'dateTo': instance.dateTo.toIso8601String(),
      'count': instance.count,
      'allClips': instance.allClips,
      'approvedClips': instance.approvedClips,
    };
