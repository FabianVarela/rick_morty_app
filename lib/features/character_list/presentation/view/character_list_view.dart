import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rick_morty_app/core/notifier/theme_notifier.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';
import 'package:rick_morty_app/core/widgets/empty_container.dart';
import 'package:rick_morty_app/core/widgets/error_container.dart';
import 'package:rick_morty_app/core/widgets/keep_alive_wrapper.dart';
import 'package:rick_morty_app/core/widgets/page_error_tile.dart';
import 'package:rick_morty_app/features/character_list/presentation/notifier/character_list_notifier.dart';
import 'package:rick_morty_app/features/character_list/presentation/widgets/character_card.dart';
import 'package:rick_morty_app/features/character_list/presentation/widgets/character_card_shimmer.dart';
import 'package:rick_morty_app/features/character_list/presentation/widgets/filter_tabs.dart';

class CharacterListView extends HookConsumerWidget {
  const CharacterListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedFilter = useState(CharacterFilter.all);
    final isGridView = useState(false);

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
      backgroundColor: context.colors.backgroundPrimary,
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
                    return Center(
                      child: CircularProgressIndicator(
                        color: context.colors.primary,
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
                    isGrid: isGridView.value,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        spacing: 12,
        mainAxisSize: .min,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'view_toggle',
            backgroundColor: context.colors.primary,
            onPressed: () => isGridView.value = !isGridView.value,
            child: Icon(
              isGridView.value ? Icons.view_list : Icons.grid_view,
              color: context.colors.textOnPrimary,
            ),
          ),
          FloatingActionButton(
            heroTag: 'theme_toggle',
            backgroundColor: context.colors.primary,
            onPressed: () {
              ref.read(themeCurrentModeProvider.notifier).toggleTheme();
            },
            child: Icon(
              ref.watch(themeCurrentModeProvider) == .light
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined,
              color: context.colors.textOnPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Map<String, String>? _buildFilter(CharacterFilter filter) {
    return switch (filter) {
      .all => null,
      .alive => {'status': 'alive'},
      .dead => {'status': 'dead'},
      .unknown => {'status': 'unknown'},
    };
  }
}

class _CharacterList extends ConsumerWidget {
  const _CharacterList({required this.total, this.filter, this.isGrid = false});

  final ({int count, int pages}) total;
  final Map<String, String>? filter;
  final bool isGrid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const pageSize = 20;

    return RefreshIndicator(
      onRefresh: () => _onRefresh(ref),
      child: CustomScrollView(
        key: ValueKey((filter, isGrid)),
        slivers: <Widget>[
          SliverPadding(
            padding: const .all(16),
            sliver: switch (isGrid) {
              true => SliverGrid.builder(
                itemCount: total.count,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: .6,
                ),
                itemBuilder: (_, index) => _CharacterItemList(
                  itemData: (index: index, pageSize: pageSize),
                  filter: filter,
                  isGrid: isGrid,
                ),
              ),
              false => SliverList.separated(
                itemCount: total.count,
                separatorBuilder: (_, _) => const SizedBox(height: 8),
                itemBuilder: (_, index) => _CharacterItemList(
                  itemData: (index: index, pageSize: pageSize),
                  filter: filter,
                  isGrid: isGrid,
                ),
              ),
            },
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

class _CharacterItemList extends ConsumerWidget {
  const _CharacterItemList({
    required this.itemData,
    required this.filter,
    required this.isGrid,
  });

  final ({int index, int pageSize}) itemData;
  final Map<String, String>? filter;
  final bool isGrid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final page = itemData.index ~/ itemData.pageSize + 1;
    final indexInPage = itemData.index % itemData.pageSize;

    final characterAsync = ref.watch(
      characterListProvider((filter: filter, page: page)),
    );

    return characterAsync.when(
      data: (data) {
        if (indexInPage >= data.results.length) return const Offstage();
        return KeepAliveWrapper(
          child: CharacterCard(
            character: data.results[indexInPage],
            isGrid: isGrid,
            onTap: () => context.go(
              '/characters/${data.results[indexInPage].id}',
            ),
          ),
        );
      },
      loading: () => CharacterCardShimmer(isGrid: isGrid),
      error: (_, _) => Offstage(
        offstage: indexInPage != 0,
        child: PageErrorTile(
          page: page,
          isGrid: isGrid,
          onRetry: () {
            final param = (filter: filter, page: page);

            ref.invalidate(characterListProvider(param));
            return ref.read(characterListProvider(param).future);
          },
        ),
      ),
    );
  }
}
