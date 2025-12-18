import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';
import 'package:rick_morty_app/core/widgets/error_container.dart';
import 'package:rick_morty_app/core/widgets/info_chip.dart';
import 'package:rick_morty_app/features/episode_detail/model/episode_detail_model.dart';
import 'package:rick_morty_app/features/episode_detail/presentation/notifier/episode_detail_notifier.dart';
import 'package:rick_morty_app/features/episode_detail/presentation/widgets/character_grid_item.dart';

class EpisodeDetailView extends ConsumerWidget {
  const EpisodeDetailView({required this.id, super.key});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final episodeDetailResult = ref.watch(rickMortyEpisodeDetailProvider(id));

    return Scaffold(
      backgroundColor: context.colors.backgroundPrimary,
      appBar: AppBar(
        title: const Text('Detalles del Episodio'),
      ),
      body: episodeDetailResult.when(
        data: (data) => _DetailContent(episode: data),
        loading: () => Center(
          child: CircularProgressIndicator(color: context.colors.primary),
        ),
        error: (e, _) => Center(
          child: ErrorContainer(
            title: 'Error loading episode',
            error: e.toString(),
            onRetry: () => ref.invalidate(rickMortyEpisodeDetailProvider(id)),
          ),
        ),
      ),
    );
  }
}

class _DetailContent extends StatelessWidget {
  const _DetailContent({required this.episode});

  final RickMortyEpisodeDetailResult episode;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Padding(
            padding: const .symmetric(horizontal: 24, vertical: 16),
            child: Column(
              spacing: 12,
              crossAxisAlignment: .start,
              children: <Widget>[
                InfoChip(label: _formattedEpisodeCode, style: .filled),
                Text(episode.name, style: context.characterTitle),
                Row(
                  spacing: 8,
                  children: <Widget>[
                    Icon(
                      Icons.calendar_today,
                      size: 16,
                      color: context.colors.textSecondary,
                    ),
                    Text(
                      episode.airDate,
                      style: context.secondaryInfo.copyWith(
                        color: context.colors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const .fromLTRB(24, 8, 24, 0),
            child: Text('Personajes', style: context.sectionTitle),
          ),
        ),
        SliverPadding(
          padding: const .all(24),
          sliver: SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: .75,
            ),
            itemCount: episode.characters.length,
            itemBuilder: (_, index) => CharacterGridItem(
              character: episode.characters[index],
              onTap: () => context.push(
                '/characters/${episode.characters[index].id}',
              ),
            ),
          ),
        ),
      ],
    );
  }

  String get _formattedEpisodeCode {
    final match = RegExp(r'(S\d+)(E\d+)').firstMatch(episode.episode);
    if (match != null) return '${match.group(1)} · ${match.group(2)}';
    return episode.episode;
  }
}
