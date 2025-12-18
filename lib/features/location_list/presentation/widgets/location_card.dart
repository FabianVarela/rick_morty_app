import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';
import 'package:rick_morty_app/features/location_list/model/location_list_model.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({required this.location, required this.onTap, super.key});

  final RickMortyLocationListResult location;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      minTileHeight: 60,
      tileColor: context.colors.backgroundCard,
      shape: RoundedRectangleBorder(borderRadius: .circular(12)),
      contentPadding: const .symmetric(horizontal: 16, vertical: 12),
      leading: _LocationIcon(type: location.type),
      title: Padding(
        padding: const .only(bottom: 6),
        child: Text(
          location.name,
          maxLines: 1,
          overflow: .ellipsis,
          style: context.episodeTitle.copyWith(
            color: context.colors.textPrimary,
            fontSize: 16,
          ),
        ),
      ),
      subtitle: Row(
        spacing: 6,
        children: <Widget>[
          SizedBox.square(
            dimension: 8,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: .circle,
                color: _typeColor(context),
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${location.type} • ${location.dimension}',
              maxLines: 1,
              overflow: .ellipsis,
              style: context.secondaryInfo.copyWith(
                color: context.colors.textSecondary,
              ),
            ),
          ),
        ],
      ),
      trailing: Icon(Icons.chevron_right, color: context.colors.textSecondary),
    );
  }

  Color _typeColor(BuildContext context) {
    final typeLower = location.type.toLowerCase();
    if (typeLower.contains('planet')) {
      return context.colors.statusAlive;
    } else if (typeLower.contains('space station')) {
      return context.colors.textSecondary;
    } else if (typeLower.contains('microverse')) {
      return context.colors.statusDead;
    } else if (typeLower.contains('tv') || typeLower.contains('dimension')) {
      return Colors.blue;
    } else if (typeLower.contains('resort')) {
      return context.colors.statusAlive;
    }
    return context.colors.statusUnknown;
  }
}

class _LocationIcon extends StatelessWidget {
  const _LocationIcon({required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 56,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: .circular(12),
          color: context.colors.backgroundPrimary,
        ),
        child: Icon(_icon, color: context.colors.primary, size: 28),
      ),
    );
  }

  IconData get _icon {
    final typeLower = type.toLowerCase();
    if (typeLower.contains('planet')) {
      return Icons.public;
    } else if (typeLower.contains('space station')) {
      return Icons.rocket_launch;
    } else if (typeLower.contains('microverse')) {
      return Icons.science;
    } else if (typeLower.contains('tv') || typeLower.contains('dimension')) {
      return Icons.tv;
    } else if (typeLower.contains('resort')) {
      return Icons.villa;
    } else if (typeLower.contains('cluster')) {
      return Icons.hub;
    }
    return Icons.location_on;
  }
}
