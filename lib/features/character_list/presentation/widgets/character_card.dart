import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';
import 'package:rick_morty_app/core/widgets/network_image_with_state.dart';
import 'package:rick_morty_app/features/character_list/model/character_list_model.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    required this.character,
    required this.onTap,
    super.key,
  });

  final RickMortyListResult character;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card.filled(
        margin: .zero,
        color: context.colors.backgroundCard,
        clipBehavior: .antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: .circular(16)),
        child: Row(
          crossAxisAlignment: .start,
          children: <Widget>[
            SizedBox.square(
              dimension: 140,
              child: NetworkImageWithState(imageUrl: character.image),
            ),
            Expanded(
              child: Padding(
                padding: const .all(16),
                child: Column(
                  spacing: 10,
                  mainAxisSize: .min,
                  crossAxisAlignment: .start,
                  children: <Widget>[
                    Text(
                      character.name,
                      maxLines: 1,
                      overflow: .ellipsis,
                      style: context.cardTitle.copyWith(
                        color: context.colors.textPrimary,
                      ),
                    ),
                    Row(
                      spacing: 6,
                      children: <Widget>[
                        SizedBox.square(
                          dimension: 8,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              shape: .circle,
                              color: switch (character.status) {
                                .alive => context.colors.statusAlive,
                                .dead => context.colors.statusDead,
                                .unknown => context.colors.statusUnknown,
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '$_statusText • ${character.species}',
                            maxLines: 1,
                            overflow: .ellipsis,
                            style: context.secondarySubtitle.copyWith(
                              color: context.colors.textSecondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (character.location != null)
                      Text.rich(
                        TextSpan(
                          text: 'Last location:',
                          style: context.secondaryInfo.copyWith(
                            color: context.colors.textTertiary,
                          ),
                          children: <InlineSpan>[
                            const TextSpan(text: '\n\t'),
                            TextSpan(
                              text: character.location?.name ?? 'Unknown',
                              style: context.secondarySubtitle.copyWith(
                                color: context.colors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                        overflow: .ellipsis,
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String get _statusText {
    return switch (character.status) {
      .alive => 'Alive',
      .dead => 'Dead',
      .unknown => 'Unknown',
    };
  }
}
