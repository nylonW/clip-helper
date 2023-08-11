import 'dart:convert';

import 'package:clippy/clips_list_editor/state/query_provider.dart';
import 'package:clippy/models/clip.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>(
  (ref) => throw UnimplementedError('prefsProvider is not implemented'),
);

final prefsProvider = Provider(
  (ref) => Prefs(ref.watch(sharedPreferencesProvider)),
);

class Prefs {
  final SharedPreferences _sharedPreferences;

  Prefs(this._sharedPreferences);

  Future<List<Query>> getQueries() async {
    final queries = _sharedPreferences.getStringList('queries') ?? [];
    return queries.map((e) => Query.fromJson(jsonDecode(e))).toList();
  }

  Future<void> saveQuery(Query query) async {
    final queries = await getQueries();
    final index = queries.indexWhere((element) => element.id == query.id);
    if (index == -1) {
      queries.add(query);
    } else {
      queries[index] = query;
    }
    await _sharedPreferences.setStringList(
      'queries',
      queries.map((e) => jsonEncode(e.toJson())).toList(),
    );
  }

  Future<void> deleteQuery(String queryId) async {
    final queries = await getQueries();
    queries.removeWhere((element) => element.id == queryId);
    await _sharedPreferences.setStringList(
      'queries',
      queries.map((e) => jsonEncode(e.toJson())).toList(),
    );
  }

  Future<List<TwitchClip>> getRejectedClips() async {
    final rejectedClips =
        _sharedPreferences.getStringList('rejectedClips') ?? [];
    return rejectedClips
        .map((e) => TwitchClip.fromJson(jsonDecode(e)))
        .toList();
  }

  Future<void> saveRejectedClip(TwitchClip clip) async {
    final rejectedClips = await getRejectedClips();
    final index = rejectedClips.indexWhere((element) => element == clip);
    if (index == -1) {
      rejectedClips.add(clip);
    } else {
      rejectedClips[index] = clip;
    }
    await _sharedPreferences.setStringList(
      'rejectedQueries',
      rejectedClips.map((e) => jsonEncode(e.toJson())).toList(),
    );
  }

  Future<void> removeRejectedClip(TwitchClip clip) async {
    final rejectedClips = await getRejectedClips();
    rejectedClips.removeWhere((element) => element == clip);
    await _sharedPreferences.setStringList(
      'rejectedQueries',
      rejectedClips.map((e) => jsonEncode(e.toJson())).toList(),
    );
  }
}
