import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';
import 'package:rick_morty_app/core/widgets/shimmer_widget.dart';

class CharacterCardShimmer extends StatelessWidget {
  const CharacterCardShimmer({this.isGrid = false, super.key});

  final bool isGrid;

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      margin: .zero,
      color: context.colors.backgroundCard,
      clipBehavior: .antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: .circular(16)),
      child: switch (isGrid) {
        true => const Column(
          crossAxisAlignment: .stretch,
          children: <Widget>[
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: ShimmerBox(borderRadius: .zero),
              ),
            ),
            Padding(
              padding: .all(12),
              child: Column(
                spacing: 6,
                mainAxisSize: .min,
                crossAxisAlignment: .start,
                children: <Widget>[
                  ShimmerBox(
                    size: .fromHeight(18),
                    borderRadius: .all(.circular(4)),
                  ),
                  Row(
                    spacing: 6,
                    children: <Widget>[
                      ShimmerBox(
                        size: .square(8),
                        borderRadius: .all(.circular(4)),
                      ),
                      ShimmerBox(
                        size: Size(100, 14),
                        borderRadius: .all(.circular(4)),
                      ),
                    ],
                  ),
                  Column(
                    spacing: 4,
                    crossAxisAlignment: .start,
                    children: <Widget>[
                      ShimmerBox(
                        size: Size(60, 10),
                        borderRadius: .all(.circular(4)),
                      ),
                      ShimmerBox(
                        size: Size(120, 12),
                        borderRadius: .all(.circular(4)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        false => const Row(
          crossAxisAlignment: .start,
          children: <Widget>[
            ShimmerBox(borderRadius: .zero, size: .square(140)),
            Expanded(
              child: Padding(
                padding: .all(16),
                child: Column(
                  spacing: 10,
                  mainAxisSize: .min,
                  crossAxisAlignment: .start,
                  children: <Widget>[
                    ShimmerBox(
                      size: Size(150, 18),
                      borderRadius: .all(.circular(4)),
                    ),
                    Row(
                      spacing: 6,
                      children: <Widget>[
                        ShimmerBox(
                          size: .square(8),
                          borderRadius: .all(.circular(4)),
                        ),
                        ShimmerBox(
                          size: Size(120, 14),
                          borderRadius: .all(.circular(4)),
                        ),
                      ],
                    ),
                    Column(
                      spacing: 4,
                      crossAxisAlignment: .start,
                      children: <Widget>[
                        ShimmerBox(
                          size: Size(90, 12),
                          borderRadius: .all(.circular(4)),
                        ),
                        ShimmerBox(
                          size: Size(140, 14),
                          borderRadius: .all(.circular(4)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      },
    );
  }
}
