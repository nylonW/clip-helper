import 'package:clippy/clips_list_editor/clips_list_editor.dart';
import 'package:clippy/clips_list_editor/state/query_provider.dart';
import 'package:clippy/constants.dart';
import 'package:clippy/utils/prefs.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final queriesProvider = StateNotifierProvider<QueriesNotifier, List<Query>>(
  (ref) => QueriesNotifier(ref.watch(prefsProvider)),
);

class QueriesNotifier extends StateNotifier<List<Query>> {
  QueriesNotifier(this.prefs) : super([]) {
    _loadQueries();
  }

  final Prefs prefs;

  Future<void> _loadQueries() async {
    state = await prefs.getQueries();
  }

  Future<void> addQuery(Query query) async {
    state = [...state, query];
    await prefs.saveQuery(query);
  }

  Future<void> deleteQuery(String queryId) async {
    state = state.where((element) => element.id != queryId).toList();
    await prefs.deleteQuery(queryId);
  }
}

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final queries = ref.watch(queriesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('cliszot - cwel edition'),
      ),
      body: ListView.builder(
        itemCount: queries.length,
        itemBuilder: (context, index) {
          final query = queries[index];
          return ListTile(
            title: Text(query.name),
            subtitle: Text(query.channels.join(', ')),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () =>
                  ref.read(queriesProvider.notifier).deleteQuery(query.id),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ClipsListEditorScreen(query: query),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (innerContext) => AlertDialog(
              title: const Text('Add query'),
              content: Column(
                children: [
                  TextField(
                    controller: TextEditingController(),
                    decoration: const InputDecoration(
                      labelText: 'Query name',
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(innerContext).pop(),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(innerContext).pop();

                    final query = Query(
                      id: DateTime.now().toIso8601String(),
                      name: 'test',
                      channels: Constants.channels,
                      createdAt: DateTime.now(),
                      dateFrom:
                          DateTime.now().subtract(const Duration(days: 1)),
                      dateTo: DateTime.now(),
                      count: 10,
                    );

                    ref.read(queriesProvider.notifier).addQuery(query);

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            ClipsListEditorScreen(query: query),
                      ),
                    );
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
