// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClipsResponse _$$_ClipsResponseFromJson(Map<String, dynamic> json) =>
    _$_ClipsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TwitchClip.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ClipsResponseToJson(_$_ClipsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$_TwitchClip _$$_TwitchClipFromJson(Map<String, dynamic> json) =>
    _$_TwitchClip(
      id: json['id'] as String,
      url: json['url'] as String,
      embedUrl: json['embed_url'] as String,
      broadcasterId: json['broadcaster_id'] as String,
      broadcasterName: json['broadcaster_name'] as String,
      creatorId: json['creator_id'] as String,
      creatorName: json['creator_name'] as String,
      videoId: json['video_id'] as String,
      gameId: json['game_id'] as String,
      language: json['language'] as String,
      title: json['title'] as String,
      viewCount: json['view_count'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      thumbnailUrl: json['thumbnail_url'] as String,
      duration: (json['duration'] as num).toDouble(),
      vodOffset: json['vod_offset'] as int?,
    );

Map<String, dynamic> _$$_TwitchClipToJson(_$_TwitchClip instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'embed_url': instance.embedUrl,
      'broadcaster_id': instance.broadcasterId,
      'broadcaster_name': instance.broadcasterName,
      'creator_id': instance.creatorId,
      'creator_name': instance.creatorName,
      'video_id': instance.videoId,
      'game_id': instance.gameId,
      'language': instance.language,
      'title': instance.title,
      'view_count': instance.viewCount,
      'created_at': instance.createdAt.toIso8601String(),
      'thumbnail_url': instance.thumbnailUrl,
      'duration': instance.duration,
      'vod_offset': instance.vodOffset,
    };

_$_Pagination _$$_PaginationFromJson(Map<String, dynamic> json) =>
    _$_Pagination(
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$$_PaginationToJson(_$_Pagination instance) =>
    <String, dynamic>{
      'cursor': instance.cursor,
    };
