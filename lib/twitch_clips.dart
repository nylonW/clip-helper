import 'dart:convert';
import 'package:clippy/models/clip.dart';
import 'package:http/http.dart' as http;

class TwitchClips {
  final String clientId;
  final String clientSecret;
  String? accessToken;

  TwitchClips(this.clientId, this.clientSecret);

  Future<void> init() async {
    accessToken = await getAccessToken();
  }

  Future<List<String>> getUserIds(List<String> logins) async {
    final headers = {
      'Authorization': 'Bearer $accessToken',
      'Client-Id': clientId
    };

    List<String> userIds = [];

    for (var i = 0; i < logins.length; i += 100) {
      var end = (i + 100 < logins.length) ? i + 100 : logins.length;
      List<String> loginsBatch = logins.sublist(i, end);

      final loginsParam = loginsBatch.map((login) => 'login=$login').join('&');
      final url = Uri.parse('https://api.twitch.tv/helix/users?$loginsParam');
      final response = await http.get(url, headers: headers);

      final data = jsonDecode(response.body)['data'] as List<dynamic>;
      List<String> batchUserIds =
          data.map((user) => user['id'] as String).toList();

      userIds.addAll(batchUserIds);
    }
    return userIds;
  }

  Future<List<TwitchClip>> getClips({
    required List<String> ids,
    required DateTime from,
    required DateTime to,
    int? count,
  }) async {
    count ??= 999999999;
    final headers = {
      'Authorization': 'Bearer $accessToken',
      'Client-Id': clientId
    };

    var fromUTC = "${from.toUtc().toIso8601String().split('.')[0]}Z";
    var toUTC = "${to.toUtc().toIso8601String().split('.')[0]}Z";

    List<TwitchClip> clips = [];

    for (var id in ids) {
      int clipCount = 0;

      try {
        var url = Uri.parse(
            'https://api.twitch.tv/helix/clips?broadcaster_id=$id&first=${count < 100 ? count : 100}&started_at=$fromUTC&ended_at=$toUTC');

        var response = await http.get(url, headers: headers);

        var clipsResponse = ClipsResponse.fromJson(json.decode(response.body));

        clips.addAll(clipsResponse.data);
        clipCount += clipsResponse.data.length;

        clips.removeWhere((clip) => clip.gameId != '21779');

        while (clipCount < count &&
            clipsResponse.pagination != null &&
            clipsResponse.pagination?.cursor != null) {
          var nextCursor = clipsResponse.pagination?.cursor;
          url = Uri.parse(
              'https://api.twitch.tv/helix/clips?broadcaster_id=$id&first=${count < 100 ? count : 100}&started_at=$fromUTC&ended_at=$toUTC&after=$nextCursor');

          response = await http.get(url, headers: headers);
          clipsResponse = ClipsResponse.fromJson(json.decode(response.body));

          clips.addAll(clipsResponse.data);
          clipCount += clipsResponse.data.length;

          clips.removeWhere((clip) => clip.gameId != '21779');
        }
      } catch (e, stacktrace) {
        print(stacktrace);
        print('Failed to get clips for broadcaster $id. Error: $e');
      }
    }

    return clips;
  }

  Future<String> getAccessToken() async {
    final url = Uri.parse(
        'https://id.twitch.tv/oauth2/token?client_id=$clientId&client_secret=$clientSecret&grant_type=client_credentials');
    final response = await http.post(url);
    return jsonDecode(response.body)['access_token'];
  }
}
