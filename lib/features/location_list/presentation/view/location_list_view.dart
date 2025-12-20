import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';
import 'package:rick_morty_app/core/widgets/empty_container.dart';
import 'package:rick_morty_app/core/widgets/error_container.dart';
import 'package:rick_morty_app/core/widgets/keep_alive_wrapper.dart';
import 'package:rick_morty_app/core/widgets/page_error_tile.dart';
import 'package:rick_morty_app/features/location_list/presentation/notifier/location_list_notifier.dart';
import 'package:rick_morty_app/features/location_list/presentation/widgets/location_card.dart';
import 'package:rick_morty_app/features/location_list/presentation/widgets/location_card_shimmer.dart';
import 'package:rick_morty_app/features/location_list/presentation/widgets/location_type_filters.dart';

class LocationListView extends HookConsumerWidget {
  const LocationListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    final selectedType = useState<String?>(null);

    final filter = ref.watch(locationFilterQueryProvider);
    final listData = ref.watch(
      locationListProvider((filter: filter, page: 1)),
    );

    useEffect(
      () {
        final currentFilter = _buildFilter(
          query: searchController.text,
          type: selectedType.value,
        );
        if (filter == currentFilter) return;

        Future.microtask(() {
          ref
              .read(locationFilterQueryProvider.notifier)
              .setQuery(query: currentFilter);
        });
        return null;
      },
      [searchController.text, selectedType.value],
    );

    return Scaffold(
      backgroundColor: context.colors.backgroundPrimary,
      appBar: AppBar(
        title: const Text('Ubicaciones'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const .all(16),
              child: TextField(
                controller: searchController,
                style: context.episodeTitle.copyWith(
                  color: context.colors.textPrimary,
                ),
                decoration: InputDecoration(
                  hintText: 'Buscar planeta, dimensión...',
                  hintStyle: context.secondaryInfo.copyWith(
                    color: context.colors.textSecondary,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: context.colors.textSecondary,
                  ),
                  filled: true,
                  fillColor: context.colors.backgroundCard,
                  border: OutlineInputBorder(
                    borderRadius: .circular(12),
                    borderSide: .none,
                  ),
                  contentPadding: const .symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),
            ),
            LocationTypeFilters(
              selectedType: selectedType.value,
              onTypeChanged: (type) => selectedType.value = type,
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
                      title: 'Error loading locations',
                      error: listData.error.toString(),
                      onRetry: () => ref.invalidate(locationListProvider),
                    );
                  }

                  final totalCount = listData.value?.info.count ?? 0;
                  final totalPages = listData.value?.info.pages ?? 0;

                  if (totalCount == 0) {
                    return const EmptyContainer(
                      message: 'No locations found',
                    );
                  }

                  return _LocationList(
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

  Map<String, String>? _buildFilter({required String query, String? type}) {
    final filter = <String, String>{
      if (query.isNotEmpty) 'name': query,
      if (type != null) 'type': type,
    };
    return filter.isEmpty ? null : filter;
  }
}

class _LocationList extends ConsumerWidget {
  const _LocationList({required this.total, this.filter});

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
              separatorBuilder: (_, _) => const SizedBox(height: 12),
              itemBuilder: (_, index) {
                final page = index ~/ pageSize + 1;
                final indexInPage = index % pageSize;

                final locationAsync = ref.watch(
                  locationListProvider((filter: filter, page: page)),
                );

                return locationAsync.when(
                  data: (data) {
                    if (indexInPage >= data.results.length) return null;

                    final location = data.results[indexInPage];
                    return KeepAliveWrapper(
                      child: LocationCard(
                        location: location,
                        onTap: () => context.push('/location/${location.id}'),
                      ),
                    );
                  },
                  loading: () => const LocationCardShimmer(),
                  error: (_, _) => Offstage(
                    offstage: indexInPage != 0,
                    child: PageErrorTile(
                      page: page,
                      onRetry: () => _onRetryPage(ref, page),
                    ),
                  ),
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

    ref.invalidate(locationListProvider(param));
    return ref.read(locationListProvider(param).future);
  }

  Future<void> _onRefresh(WidgetRef ref) async {
    try {
      ref.invalidate(locationListProvider);
      return ref.read(locationListProvider((filter: filter, page: 1)).future);
    } catch (_) {
      debugPrint('Error refreshing data');
    }
  }
}
