import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';
import 'package:rick_morty_app/core/widgets/empty_container.dart';
import 'package:rick_morty_app/core/widgets/error_container.dart';
import 'package:rick_morty_app/features/episode_list/presentation/notifier/episode_list_notifier.dart';
import 'package:rick_morty_app/features/episode_list/presentation/widgets/episode_card.dart';
import 'package:rick_morty_app/features/episode_list/presentation/widgets/season_tabs.dart';

class EpisodeListView extends HookConsumerWidget {
  const EpisodeListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSeason = useState(1);

    final filter = ref.watch(episodeFilterQueryProvider);
    final episodeData = ref.watch(episodeListProvider(filter));

    useEffect(
      () {
        final currentFilter = _buildFilter(selectedSeason.value);
        if (filter == currentFilter) return;

        Future.microtask(() {
          ref
              .read(episodeFilterQueryProvider.notifier)
              .setQuery(query: currentFilter);
        });
        return null;
      },
      [selectedSeason.value],
    );

    return Scaffold(
      backgroundColor: context.colors.backgroundPrimary,
      appBar: AppBar(
        title: const Text('Lista de Episodios'),
        foregroundColor: Colors.white,
        backgroundColor: context.colors.backgroundPrimary,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SeasonTabs(
              selectedSeason: selectedSeason.value,
              onSeasonChanged: (season) => selectedSeason.value = season,
            ),
            Expanded(
              child: Builder(
                builder: (_) {
                  if (episodeData.isLoading && !episodeData.hasValue) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: context.colors.primary,
                      ),
                    );
                  }

                  if (episodeData.hasError && !episodeData.hasValue) {
                    return ErrorContainer(
                      title: 'Error loading episodes',
                      error: episodeData.error.toString(),
                      onRetry: () => ref.invalidate(episodeListProvider),
                    );
                  }

                  final episodes = episodeData.value?.results ?? [];

                  if (episodes.isEmpty) {
                    return const EmptyContainer(message: 'No episodes found');
                  }

                  return ListView.separated(
                    padding: const .all(16),
                    itemCount: episodes.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 12),
                    itemBuilder: (context, index) => EpisodeCard(
                      episode: episodes[index],
                      onTap: () => context.push(
                        '/episodes/${episodes[index].id}',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Map<String, String> _buildFilter(int season) {
    final seasonCode = 'S${season.toString().padLeft(2, '0')}';
    return {'episode': seasonCode};
  }
}
