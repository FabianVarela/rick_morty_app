import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';
import 'package:rick_morty_app/core/widgets/network_image_with_state.dart';
import 'package:rick_morty_app/features/episode_detail/model/episode_detail_model.dart';

class CharacterGridItem extends StatelessWidget {
  const CharacterGridItem({
    required this.character,
    required this.onTap,
    super.key,
  });

  final RickMortyEpisodeDetailCharacter character;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card.filled(
        margin: .zero,
        color: context.colors.backgroundCard,
        clipBehavior: .antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: .circular(12)),
        child: Column(
          crossAxisAlignment: .start,
          children: <Widget>[
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: NetworkImageWithState(imageUrl: character.image),
              ),
            ),
            Padding(
              padding: const .all(8),
              child: Column(
                spacing: 4,
                mainAxisSize: .min,
                crossAxisAlignment: .start,
                children: <Widget>[
                  Text(
                    character.name,
                    maxLines: 1,
                    overflow: .ellipsis,
                    style: context.episodeTitle,
                  ),
                  Row(
                    spacing: 6,
                    children: <Widget>[
                      SizedBox.square(
                        dimension: 8,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            shape: .circle,
                            color: switch (character.status.toLowerCase()) {
                              'alive' => context.colors.statusAlive,
                              'dead' => context.colors.statusDead,
                              _ => context.colors.statusUnknown,
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          switch (character.status.toLowerCase()) {
                            'alive' => 'Alive',
                            'dead' => 'Dead',
                            _ => 'Unknown',
                          },
                          maxLines: 1,
                          overflow: .ellipsis,
                          style: context.secondarySubtitle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
