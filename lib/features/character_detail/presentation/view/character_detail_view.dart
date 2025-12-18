import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';
import 'package:rick_morty_app/core/widgets/error_container.dart';
import 'package:rick_morty_app/core/widgets/network_image_with_state.dart';
import 'package:rick_morty_app/core/widgets/status_badge.dart';
import 'package:rick_morty_app/features/character_detail/model/character_detail_model.dart';
import 'package:rick_morty_app/features/character_detail/presentation/notifier/character_detail_notifier.dart';
import 'package:rick_morty_app/features/character_detail/presentation/widgets/episode_list_item.dart';
import 'package:rick_morty_app/features/character_detail/presentation/widgets/info_card.dart';

class CharacterDetailView extends ConsumerWidget {
  const CharacterDetailView({required this.id, super.key});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailResult = ref.watch(rickMortyDetailProvider(id));

    return Scaffold(
      backgroundColor: context.colors.backgroundPrimary,
      appBar: detailResult.whenOrNull(
        error: (_, _) => AppBar(title: const Text('Error')),
      ),
      body: detailResult.when(
        data: (data) => _DetailContent(character: data),
        loading: () => Center(
          child: CircularProgressIndicator(color: context.colors.primary),
        ),
        error: (e, _) => Center(
          child: ErrorContainer(
            title: 'Error loading character',
            error: e.toString(),
            onRetry: () => ref.invalidate(rickMortyDetailProvider(id)),
          ),
        ),
      ),
    );
  }
}

class _DetailContent extends StatelessWidget {
  const _DetailContent({required this.character});

  final RickMortyDetailResult character;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 300,
          backgroundColor: context.colors.backgroundPrimary,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: context.colors.textPrimary,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.share, color: context.colors.textPrimary),
              onPressed: () {},
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: .expand,
              children: <Widget>[
                NetworkImageWithState(imageUrl: character.image),
                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: .topCenter,
                      end: .bottomCenter,
                      colors: <Color>[
                        Colors.black.withValues(alpha: .3),
                        context.colors.backgroundPrimary.withValues(alpha: .8),
                        context.colors.backgroundPrimary,
                      ],
                      stops: const <double>[0, .7, 1],
                    ),
                  ),
                ),
                Align(
                  alignment: .bottomRight,
                  child: Padding(
                    padding: const .only(right: 16, bottom: 16),
                    child: FilledButton.icon(
                      style: FilledButton.styleFrom(
                        padding: const .all(12),
                        shape: const CircleBorder(),
                        backgroundColor: context.colors.primary,
                      ),
                      onPressed: () {},
                      label: Icon(
                        Icons.favorite,
                        color: context.colors.textOnPrimary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const .symmetric(horizontal: 24, vertical: 8),
            child: Column(
              spacing: 12,
              crossAxisAlignment: .start,
              children: <Widget>[
                Text(
                  character.name,
                  style: context.characterTitle.copyWith(
                    color: context.colors.textPrimary,
                  ),
                ),
                Row(
                  spacing: 8,
                  children: <Widget>[
                    StatusBadge(
                      status: switch (character.status) {
                        .alive => .alive,
                        .dead => .dead,
                        .unknown => .unknown,
                      },
                    ),
                    Text(
                      '• ${character.species}',
                      style: context.subtitle.copyWith(
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
            padding: const .symmetric(horizontal: 24, vertical: 16),
            child: Column(
              spacing: 12,
              children: <Widget>[
                Row(
                  spacing: 12,
                  children: <Widget>[
                    Expanded(
                      child: InfoCard(
                        icon: Icons.science_outlined,
                        label: 'Species',
                        value: character.species,
                        position: .column,
                      ),
                    ),
                    Expanded(
                      child: InfoCard(
                        icon: switch (character.gender) {
                          .male => Icons.male,
                          .female => Icons.female,
                          _ => Icons.transgender,
                        },
                        label: 'Gender',
                        value: switch (character.gender) {
                          .male => 'Male',
                          .female => 'Female',
                          .genderless => 'Genderless',
                          .unknown => 'Unknown',
                        },
                        position: .column,
                      ),
                    ),
                  ],
                ),
                InfoCard(
                  icon: Icons.public,
                  label: 'Origin',
                  value: character.origin.name ?? 'Unknown',
                  position: .row,
                ),
                InfoCard(
                  icon: Icons.location_on_outlined,
                  label: 'Last known location',
                  value: character.location.name ?? 'Unknown',
                  position: .row,
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const .symmetric(horizontal: 24, vertical: 16),
            child: Row(
              children: <Widget>[
                Text(
                  'Episodes',
                  style: context.sectionTitle.copyWith(
                    color: context.colors.textPrimary,
                  ),
                ),
                const Spacer(),
                Text(
                  '${character.episode.length} total',
                  style: context.episodeTitle.copyWith(
                    color: context.colors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const .symmetric(horizontal: 24),
          sliver: SliverList.separated(
            itemCount: character.episode.length > 4
                ? 4
                : character.episode.length,
            separatorBuilder: (_, _) => const SizedBox(height: 12),
            itemBuilder: (_, index) => EpisodeListItem(
              episode: character.episode[index],
              onTap: () {},
            ),
          ),
        ),
        if (character.episode.length > 4)
          SliverToBoxAdapter(
            child: Padding(
              padding: const .all(24),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding: const .symmetric(vertical: 16),
                  side: BorderSide(color: context.colors.borderColor),
                  shape: RoundedRectangleBorder(borderRadius: .circular(8)),
                ),
                child: Text(
                  'View all episodes',
                  style: context.buttonText.copyWith(
                    color: context.colors.textPrimary,
                  ),
                ),
              ),
            ),
          )
        else
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
      ],
    );
  }
}
