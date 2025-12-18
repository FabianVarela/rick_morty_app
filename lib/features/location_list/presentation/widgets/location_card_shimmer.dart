import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/widgets/shimmer_widget.dart';

class LocationCardShimmer extends StatelessWidget {
  const LocationCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      margin: .zero,
      color: const Color(0xFF1E3A2F),
      clipBehavior: .antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: .circular(12)),
      child: const ListTile(
        minTileHeight: 60,
        contentPadding: .symmetric(horizontal: 16, vertical: 12),
        leading: ShimmerBox(
          size: .square(56),
          borderRadius: .all(.circular(12)),
        ),
        title: Padding(
          padding: .only(bottom: 6),
          child: ShimmerBox(
            size: Size(180, 16),
            borderRadius: .all(.circular(4)),
          ),
        ),
        subtitle: Row(
          spacing: 6,
          children: <Widget>[
            ShimmerBox(
              size: .square(8),
              borderRadius: .all(.circular(4)),
            ),
            ShimmerBox(
              size: Size(150, 12),
              borderRadius: .all(.circular(4)),
            ),
          ],
        ),
        trailing: ShimmerBox(
          size: .square(24),
          borderRadius: .all(.circular(4)),
        ),
      ),
    );
  }
}
