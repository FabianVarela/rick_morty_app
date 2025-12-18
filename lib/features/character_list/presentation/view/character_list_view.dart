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
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
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
                    return KeepAliveWrapper(
                      child: CharacterCard(
                        character: character,
                        onTap: () => context.go('/characters/${character.id}'),
                      ),
                    );
                  },
                  loading: () => const CharacterCardShimmer(),
                  error: (_, _) => indexInPage == 0
                      ? PageErrorTile(
                          page: page,
                          onRetry: () => _onRetryPage(ref, page),
                        )
                      : const Offstage(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onRetryPage(WidgetRef ref, int page) {
    final param = (filter: filter, page: page);

    ref.invalidate(characterListProvider(param));
    return ref.read(characterListProvider(param).future);
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
