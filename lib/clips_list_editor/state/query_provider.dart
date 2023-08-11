import 'package:clippy/models/clip.dart';
import 'package:clippy/utils/prefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'query_provider.freezed.dart';
part 'query_provider.g.dart';

@freezed
class Query with _$Query {
  factory Query({
    required String id,
    required String name,
    required List<String> channels,
    String? category,
    required DateTime createdAt,
    required DateTime dateFrom,
    required DateTime dateTo,
    int? count,
    @Default([]) List<TwitchClip> allClips,
    @Default([]) List<TwitchClip> approvedClips,
  }) = _Query;

  factory Query.fromJson(Map<String, dynamic> json) => _$QueryFromJson(json);
}

final queryProvider = StateNotifierProvider.family<QueryNotifier, Query, Query>(
  (ref, query) {
    final prefs = ref.watch(prefsProvider);
    return QueryNotifier(prefs, query);
  },
);

class QueryNotifier extends StateNotifier<Query> {
  QueryNotifier(this.prefs, Query query) : super(query) {
    state = query;
  }

  final Prefs prefs;

  Future<void> _updatePrefs() async {
    await prefs.saveQuery(state);
  }

  Future<void> setQuery(Query query) async {
    state = query;
    await _updatePrefs();
  }

  void setId(String id) async {
    state = state.copyWith(id: id);
    await _updatePrefs();
  }

  void setName(String name) async {
    state = state.copyWith(name: name);
    await _updatePrefs();
  }

  void setChannels(List<String> channels) async {
    state = state.copyWith(channels: channels);
    await _updatePrefs();
  }

  void setCategory(String? category) async {
    state = state.copyWith(category: category);
    await _updatePrefs();
  }

  void setCreatedAt(DateTime createdAt) async {
    state = state.copyWith(createdAt: createdAt);
    await _updatePrefs();
  }

  void setDateFrom(DateTime dateFrom) async {
    state = state.copyWith(dateFrom: dateFrom);
    await _updatePrefs();
  }

  void setDateTo(DateTime dateTo) async {
    state = state.copyWith(dateTo: dateTo);
    await _updatePrefs();
  }

  void setCount(int? count) async {
    state = state.copyWith(count: count);
    await _updatePrefs();
  }

  Future<void> setAllClips(List<TwitchClip> allClips) async {
    state = state.copyWith(allClips: allClips);
    await _updatePrefs();
  }

  Future<void> setApprovedClips(List<TwitchClip> approvedClips) async {
    state = state.copyWith(approvedClips: approvedClips);
    await _updatePrefs();
  }
}

final rejectedClipsProvider =
    StateNotifierProvider<RejectedClipsNotifier, List<TwitchClip>>(
  (ref) {
    final prefs = ref.watch(prefsProvider);
    return RejectedClipsNotifier(prefs);
  },
);

class RejectedClipsNotifier extends StateNotifier<List<TwitchClip>> {
  RejectedClipsNotifier(this.prefs) : super([]) {
    _loadRejectedClips();
  }

  final Prefs prefs;

  Future<void> _loadRejectedClips() async {
    state = await prefs.getRejectedClips();
  }

  Future<void> addClip(TwitchClip clip) async {
    state = [...state, clip];
    await prefs.saveRejectedClip(clip);
  }

  Future<void> deleteQuery(TwitchClip clip) async {
    state = state.where((element) => element != clip).toList();
    await prefs.removeRejectedClip(clip);
  }
}
