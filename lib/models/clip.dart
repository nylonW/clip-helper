import 'package:freezed_annotation/freezed_annotation.dart';

part 'clip.freezed.dart';
part 'clip.g.dart';

// {id: SuspiciousMoralFrogRuleFive-bklIjo7AorF34STQ, url: https://clips.twitch.tv/SuspiciousMoralFrogRuleFive-bklIjo7AorF34STQ, embed_url: https://clips.twitch.tv/embed?clip=SuspiciousMoralFrogRuleFive-bklIjo7AorF34STQ, broadcaster_id: 118241089, broadcaster_name: KarasMai, creator_id: 412755269, creator_name: Wyaffle, video_id: 1891939830, game_id: 21779, language: en, title: step kayn is stuck, view_count: 99, created_at: 2023-08-06T23:14:26Z, thumbnail_url: https://clips-media-assets2.twitch.tv/KA5Qg25JSI6OwKKxd-Ek0A/AT-cm%7CKA5Qg25JSI6OwKKxd-Ek0A-preview-480x272.jpg, duration: 30, vod_offset: 10697}

@freezed
class ClipsResponse with _$ClipsResponse {
  factory ClipsResponse({
    required List<TwitchClip> data,
    Pagination? pagination,
  }) = _ClipsResponse;

  factory ClipsResponse.fromJson(Map<String, dynamic> json) =>
      _$ClipsResponseFromJson(json);
}

@freezed
class TwitchClip with _$TwitchClip {
  factory TwitchClip({
    required String id,
    required String url,
    @JsonKey(name: 'embed_url') required String embedUrl,
    @JsonKey(name: 'broadcaster_id') required String broadcasterId,
    @JsonKey(name: 'broadcaster_name') required String broadcasterName,
    @JsonKey(name: 'creator_id') required String creatorId,
    @JsonKey(name: 'creator_name') required String creatorName,
    @JsonKey(name: 'video_id') required String videoId,
    @JsonKey(name: 'game_id') required String gameId,
    required String language,
    required String title,
    @JsonKey(name: 'view_count') required int viewCount,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'thumbnail_url') required String thumbnailUrl,
    required double duration,
    @JsonKey(name: 'vod_offset') int? vodOffset,
  }) = _TwitchClip;

  factory TwitchClip.fromJson(Map<String, dynamic> json) =>
      _$TwitchClipFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  factory Pagination({
    String? cursor,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
