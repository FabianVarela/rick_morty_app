import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rick_morty_app/core/widgets/empty_container.dart';
import 'package:rick_morty_app/core/widgets/error_container.dart';
import 'package:rick_morty_app/features/list/presentation/notifier/rick_morty_list_notifier.dart';
import 'package:rick_morty_app/features/list/presentation/widgets/character_card.dart';
import 'package:rick_morty_app/features/list/presentation/widgets/filter_tabs.dart';

class RickMortyListView extends HookConsumerWidget {
  const RickMortyListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedFilter = useState(CharacterFilter.all);

    final filter = ref.watch(characterFilterQueryProvider);
    final listData = ref.watch(
      characterListProvider((filter: filter, page: 1)),
    );

    useEffect(
      () {
        final currentFilter = _buildFilter(selectedFilter.value);
        if (filter == currentFilter) return;

        Future.microtask(() {
          ref
              .read(characterFilterQueryProvider.notifier)
              .setQuery(query: currentFilter);
        });
        return null;
      },
      [selectedFilter.value],
    );

    return Scaffold(
      backgroundColor: const Color(0xFF0D1B2A),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            FilterTabs(
              selectedFilter: selectedFilter.value,
              onFilterChanged: (filter) => selectedFilter.value = filter,
            ),
            Expanded(
              child: Builder(
                builder: (_) {
                  if (listData.isLoading && !listData.hasValue) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Color(0xFF4EAD7F),
                      ),
                    );
                  }

                  if (listData.hasError && !listData.hasValue) {
                    return ErrorContainer(
                      title: 'Error loading characters',
                      error: listData.error.toString(),
                      onRetry: () => ref.invalidate(characterListProvider),
                    );
                  }

                  final totalCount = listData.value?.info.count ?? 0;
                  final totalPages = listData.value?.info.pages ?? 0;

                  if (totalCount == 0) {
                    return const EmptyContainer(message: 'No characters found');
                  }

                  return _CharacterList(
                    total: (count: totalCount, pages: totalPages),
                    filter: filter,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Map<String, String>? _buildFilter(CharacterFilter filter) {
    return switch (filter) {
      CharacterFilter.all => null,
      CharacterFilter.alive => {'status': 'alive'},
      CharacterFilter.dead => {'status': 'dead'},
      CharacterFilter.unknown => {'status': 'unknown'},
    };
  }
}

class _CharacterList extends ConsumerWidget {
  const _CharacterList({required this.total, this.filter});

  final ({int count, int pages}) total;
  final Map<String, String>? filter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const pageSize = 20;

    return RefreshIndicator(
      onRefresh: () => _onRefresh(ref),
      child: CustomScrollView(
        key: ValueKey(filter),
        slivers: <Widget>[
          SliverPadding(
            padding: const .all(16),
            sliver: SliverList.separated(
              itemCount: total.count,
              separatorBuilder: (_, _) => const SizedBox(height: 8),
              itemBuilder: (_, index) {
                final page = index ~/ pageSize + 1;
                final indexInPage = index % pageSize;

                final characterAsync = ref.watch(
                  characterListProvider((filter: filter, page: page)),
                );

                return characterAsync.when(
                  data: (data) {
                    if (indexInPage >= data.results.length) return null;

                    final character = data.results[indexInPage];
                    return CharacterCard(
                      character: character,
                      onTap: () => context.go('/characters/${character.id}'),
                    );
                  },
                  loading: () => const Center(
                    child: CircularProgressIndicator(color: Color(0xFF4EAD7F)),
                  ),
                  error: (_, _) => indexInPage == 0
                      ? _ErrorTile(page: page, filter: filter)
                      : const Offstage(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onRefresh(WidgetRef ref) async {
    try {
      ref.invalidate(characterListProvider);
      return ref.read(characterListProvider((filter: filter, page: 1)).future);
    } catch (_) {
      debugPrint('Error refreshing data');
    }
  }
}

class _ErrorTile extends ConsumerWidget {
  const _ErrorTile({required this.page, this.filter});

  final int page;
  final Map<String, String>? filter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final param = (filter: filter, page: page);

    return Padding(
      padding: const .all(16),
      child: Row(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Error loading page: $page'),
          ElevatedButton(
            onPressed: () {
              ref.invalidate(characterListProvider(param));
              return ref.read(characterListProvider(param).future);
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
