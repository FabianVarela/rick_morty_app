import 'package:flutter/material.dart';
import 'package:rick_morty_app/features/list/model/rick_morty_list_model.dart';

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
        color: const Color(0xFF1E3A2F),
        clipBehavior: .antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: .circular(16)),
        child: Row(
          crossAxisAlignment: .start,
          children: <Widget>[
            SizedBox.square(
              dimension: 140,
              child: Image.network(
                character.image,
                fit: .cover,
                errorBuilder: (_, _, _) => ColoredBox(
                  color: Colors.grey.withValues(alpha: .8),
                  child: const Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.white38,
                  ),
                ),
                loadingBuilder: (_, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return ColoredBox(
                    color: Colors.grey.withValues(alpha: .8),
                    child: Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                            : null,
                        strokeWidth: 2,
                        color: Colors.white38,
                      ),
                    ),
                  );
                },
              ),
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
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: .bold,
                        color: Colors.white,
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
                                .alive => const Color(0xFF4EAD7F),
                                .dead => const Color(0xFFD63D2D),
                                .unknown => Colors.grey,
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '$_statusText • ${character.species}',
                            maxLines: 1,
                            overflow: .ellipsis,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (character.location != null)
                      Text.rich(
                        TextSpan(
                          text: 'Last location:',
                          children: <InlineSpan>[
                            const TextSpan(text: '\n\t'),
                            TextSpan(
                              text: character.location?.name ?? 'Unknown',
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                        overflow: .ellipsis,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white54,
                        ),
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
