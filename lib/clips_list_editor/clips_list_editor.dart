import 'dart:io';

import 'package:clippy/clips_list_editor/state/query_provider.dart';
import 'package:clippy/constants.dart';
import 'package:clippy/env.dart';
import 'package:clippy/models/clip.dart';
import 'package:clippy/twitch_clips.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart'; // Provides [VideoController] & [Video] etc.
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

final selectedClipProvider =
    StateProvider.autoDispose<TwitchClip?>((ref) => null);

class ClipsListEditorScreen extends ConsumerStatefulWidget {
  const ClipsListEditorScreen({
    super.key,
    required this.query,
  });

  final Query query;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ClipsListEditorState();
}

class _ClipsListEditorState extends ConsumerState<ClipsListEditorScreen> {
  final playerWidth = 900.0;
  @override
  void initState() {
    super.initState();
    init();
  }

  var progress = 0.0;
  var isDownloading = false;

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  Future<void> init() async {
    if (widget.query.allClips.isNotEmpty ||
        widget.query.approvedClips.isNotEmpty) {
      return;
    }

    final queryNotifier = ref.read(queryProvider(widget.query).notifier);
    await queryNotifier.setQuery(widget.query);

    const twitchClientId = Env.twitchClientId;
    const twitchClientSecret = Env.twitchClientSecret;
    final twitchClips = TwitchClips(twitchClientId, twitchClientSecret);
    await twitchClips.init();

    final ids = await twitchClips.getUserIds(widget.query.channels);

    final clipss = await twitchClips.getClips(
      ids: ids,
      count: widget.query.count,
      from: widget.query.dateFrom,
      to: widget.query.dateTo,
    );
    for (final clip in clipss) {
      print('${clip.viewCount} ${clip.url} ${clip.broadcasterName}');
    }

    final rejectedClips = ref.read(rejectedClipsProvider);

    clipss.removeWhere((clip) => rejectedClips.contains(clip));

    clipss.sort((a, b) => b.viewCount.compareTo(a.viewCount));

    queryNotifier.setAllClips(clipss);

    Future.delayed(Duration.zero, () {
      ref.read(selectedClipProvider.notifier).state = clipss.first;

      String url = getVideoUrl(clipss.first.thumbnailUrl);

      player.open(Media(url));
    });
  }

  late final player = Player();
  late final controller = VideoController(player);

  @override
  Widget build(BuildContext context) {
    final selectedClip = ref.watch(selectedClipProvider);
    final query = ref.watch(queryProvider(widget.query));
    final queryNotifier = ref.read(queryProvider(widget.query).notifier);

    final rejectedClips = ref.watch(rejectedClipsProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Cwel-szoter'),
        actions: [
          IconButton(
            onPressed: () async {
              final clips = query.approvedClips;
              setState(() {
                isDownloading = true;
              });
              for (final clip in clips) {
                final url = getVideoUrl(clip.thumbnailUrl);
                var response = await http.get(Uri.parse(url));
                final filename = clip.url.split('/').last;
                Directory documentsDirectory =
                    await getApplicationDocumentsDirectory();

                final directory =
                    Directory('${documentsDirectory.path}/${query.name}');

                if (!await directory.exists()) {
                  await directory.create();
                }

                File file = File('${directory.path}/$filename.mp4');
                file.writeAsBytesSync(response.bodyBytes);

                setState(() {
                  progress = clips.indexOf(clip) / clips.length;
                });
              }

              setState(() {
                isDownloading = false;
              });
            },
            icon: isDownloading
                ? Center(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: CircularProgressIndicator(value: progress),
                    ),
                  )
                : const Icon(Icons.save),
          ),
        ],
      ),
      body: Row(children: [
        Expanded(
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                const TabBar(
                  tabs: [
                    Tab(text: 'All'),
                    Tab(text: 'Approved'),
                    Tab(text: 'Rejected'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      ClipsTab(clips: query.allClips, player: player),
                      ClipsTab(clips: query.approvedClips, player: player),
                      ClipsTab(clips: rejectedClips, player: player),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white.withOpacity(0.3),
              width: 1,
            ),
          ),
          width: 900,
          child: selectedClip == null
              ? null
              : Column(children: [
                  SizedBox(
                    width: playerWidth,
                    height: playerWidth * 9 / 16,
                    child: Video(controller: controller),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FilledButton.icon(
                        onPressed: () async {
                          final currentQuery =
                              ref.read(queryProvider(widget.query));

                          final index =
                              currentQuery.allClips.indexOf(selectedClip);
                          if (index < currentQuery.allClips.length - 1) {
                            ref.read(selectedClipProvider.notifier).state =
                                currentQuery.allClips[index + 1];
                          }

                          await queryNotifier.setApprovedClips([
                            ...currentQuery.approvedClips,
                            selectedClip,
                          ]);
                          await queryNotifier.setAllClips(
                            List.from(currentQuery.allClips)
                              ..removeWhere(
                                (element) => element == selectedClip,
                              ),
                          );

                          final newSelected = ref.read(selectedClipProvider);

                          if (newSelected == null) {
                            return;
                          }

                          String url = getVideoUrl(newSelected.thumbnailUrl);

                          player.open(Media(url));
                        },
                        icon: const Icon(Icons.check),
                        label: const Text('Kox'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.green,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      FilledButton.icon(
                        onPressed: () async {
                          final currentQuery =
                              ref.read(queryProvider(widget.query));

                          final index =
                              currentQuery.allClips.indexOf(selectedClip);
                          if (index < currentQuery.allClips.length - 1) {
                            ref.read(selectedClipProvider.notifier).state =
                                currentQuery.allClips[index + 1];
                          }

                          final rejectedClipsNotifier =
                              ref.read(rejectedClipsProvider.notifier);

                          await rejectedClipsNotifier.addClip(selectedClip);

                          await queryNotifier.setAllClips(
                            List.from(currentQuery.allClips)
                              ..removeWhere(
                                (element) => element == selectedClip,
                              ),
                          );

                          final newSelected = ref.read(selectedClipProvider);

                          if (newSelected == null) {
                            return;
                          }

                          String url = getVideoUrl(newSelected.thumbnailUrl);

                          player.open(Media(url));
                        },
                        icon: const Icon(Icons.remove),
                        label: const Text('guwno'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.red,
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
        ),
      ]),
    );
  }
}

class ClipsTab extends ConsumerWidget {
  const ClipsTab({
    super.key,
    required this.clips,
    required this.player,
  });

  final List<TwitchClip> clips;
  final Player player;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemCount: clips.length,
      itemBuilder: (context, index) {
        final prettyDate =
            DateFormat('HH:mm dd.MM.yyyy').format(clips[index].createdAt);

        final howLongAgoFromNow =
            DateTime.now().difference(clips[index].createdAt);
        final stringHowLongAgo = howLongAgoFromNow.inDays > 0
            ? '${howLongAgoFromNow.inDays} days ago'
            : howLongAgoFromNow.inHours > 0
                ? '${howLongAgoFromNow.inHours} hours ago'
                : '${howLongAgoFromNow.inMinutes} minutes ago';
        return ListTile(
          visualDensity: const VisualDensity(vertical: 3),
          selected: ref.watch(selectedClipProvider) == clips[index],
          title: Text(
            clips[index].title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            clips[index].broadcasterName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: SizedBox(
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${NumberFormat.compact().format(clips[index].viewCount)} views',
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  prettyDate,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  stringHowLongAgo,
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).textTheme.bodySmall!.color!,
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            String url = getVideoUrl(clips[index].thumbnailUrl);

            ref.read(selectedClipProvider.notifier).state = clips[index];

            player.open(Media(url));
          },
        );
      },
    );
  }
}

String getVideoUrl(String thumbnailUrl) {
  int splitIndex = thumbnailUrl.indexOf("-preview");
  return "${thumbnailUrl.substring(0, splitIndex)}.mp4";
}
