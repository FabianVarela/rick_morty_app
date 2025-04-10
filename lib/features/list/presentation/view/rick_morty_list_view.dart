import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rick_morty_app/features/list/presentation/notifier/rick_morty_list_notifier.dart';

class RickMortyListView extends ConsumerWidget {
  const RickMortyListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listData = ref.watch(rickMortyListProvider);

    return Scaffold(
      body: listData.when(
        data: (data) {
          if (data.results.isEmpty) {
            return const Center(child: Text('Is empty'));
          }

          return ListView.separated(
            itemCount: data.results.length,
            separatorBuilder: (_, index) => const Divider(),
            itemBuilder: (_, index) {
              return ListTile(
                onTap: () => context.go('/${data.results[index].id}'),
                title: Text(data.results[index].name),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => const Center(child: Text('Error getting data')),
      ),
    );
  }
}
