import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';
import 'package:rick_morty_app/core/widgets/network_image_with_state.dart';
import 'package:rick_morty_app/core/widgets/status_badge.dart';
import 'package:rick_morty_app/features/location_detail/model/location_detail_model.dart';

class ResidentGridItem extends StatelessWidget {
  const ResidentGridItem({
    required this.resident,
    required this.onTap,
    super.key,
  });

  final RickMortyLocationDetailResident resident;
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
              child: Stack(
                fit: .expand,
                children: <Widget>[
                  NetworkImageWithState(imageUrl: resident.image),
                  Align(
                    alignment: .topRight,
                    child: Padding(
                      padding: const .only(top: 8, right: 8),
                      child: StatusBadge(
                        status: switch (resident.status.toLowerCase()) {
                          'alive' => .alive,
                          'dead' => .dead,
                          _ => .unknown,
                        },
                        size: .small,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const .all(8),
              child: Text(
                resident.name,
                maxLines: 1,
                overflow: .ellipsis,
                style: context.episodeTitle.copyWith(
                  color: context.colors.textPrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
