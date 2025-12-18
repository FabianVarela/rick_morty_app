import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';
import 'package:rick_morty_app/core/widgets/network_image_with_state.dart';
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
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: const .only(top: 8, right: 8),
                      padding: const .symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: .circular(12),
                        color: context.colors.backgroundCard,
                      ),
                      child: Row(
                        spacing: 4,
                        mainAxisSize: .min,
                        children: <Widget>[
                          SizedBox.square(
                            dimension: 6,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                shape: .circle,
                                color: _statusColor(context),
                              ),
                            ),
                          ),
                          Text(
                            _statusText.toUpperCase(),
                            style: context.smallLabel.copyWith(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: .bold,
                            ),
                          ),
                        ],
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

  String get _statusText {
    return switch (resident.status.toLowerCase()) {
      'alive' => 'Alive',
      'dead' => 'Dead',
      _ => 'Unknown',
    };
  }

  Color _statusColor(BuildContext context) {
    return switch (resident.status.toLowerCase()) {
      'alive' => context.colors.statusAlive,
      'dead' => context.colors.statusDead,
      _ => context.colors.statusUnknown,
    };
  }
}
