import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';
import 'package:rick_morty_app/core/widgets/error_container.dart';
import 'package:rick_morty_app/features/location_detail/model/location_detail_model.dart';
import 'package:rick_morty_app/features/location_detail/presentation/notifier/location_detail_notifier.dart';
import 'package:rick_morty_app/features/location_detail/presentation/widgets/resident_grid_item.dart';

class LocationDetailView extends ConsumerWidget {
  const LocationDetailView({required this.id, super.key});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationDetailResult = ref.watch(
      rickMortyLocationDetailProvider(id),
    );

    return Scaffold(
      backgroundColor: context.colors.backgroundPrimary,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: context.colors.backgroundPrimary,
        title: const Text('Detalles de Ubicación'),
      ),
      body: locationDetailResult.when(
        data: (data) => _DetailContent(location: data),
        loading: () => Center(
          child: CircularProgressIndicator(color: context.colors.primary),
        ),
        error: (e, _) => Center(
          child: ErrorContainer(
            title: 'Error loading location',
            error: e.toString(),
            onRetry: () => ref.invalidate(rickMortyLocationDetailProvider(id)),
          ),
        ),
      ),
    );
  }
}

class _DetailContent extends StatelessWidget {
  const _DetailContent({required this.location});

  final RickMortyLocationDetailResult location;

  @override
  Widget build(BuildContext context) {
    final locationInfo = <({IconData icon, String label})>[
      (icon: _locationIcon, label: location.type),
      (icon: Icons.hub, label: location.dimension),
    ];

    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: const .symmetric(vertical: 24),
          sliver: SliverToBoxAdapter(
            child: Center(
              child: SizedBox.square(
                dimension: 80,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: .circle,
                    color: context.colors.backgroundCard,
                    border: Border.all(color: context.colors.primary, width: 2),
                  ),
                  child: Icon(
                    _locationIcon,
                    size: 40,
                    color: context.colors.primary,
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const .symmetric(horizontal: 24),
            child: Column(
              spacing: 16,
              children: <Widget>[
                Text(
                  location.name,
                  textAlign: .center,
                  style: context.characterTitle,
                ),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  alignment: WrapAlignment.center,
                  children: <Widget>[
                    for (final item in locationInfo)
                      _InfoChip(icon: item.icon, label: item.label),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const .all(24),
            child: Text(
              'Residentes (${location.residents.length})',
              style: context.sectionTitle,
            ),
          ),
        ),
        SliverPadding(
          padding: const .fromLTRB(24, 0, 24, 24),
          sliver: SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: .75,
            ),
            itemCount: location.residents.length,
            itemBuilder: (_, index) => ResidentGridItem(
              resident: location.residents[index],
              onTap: () => context.push(
                '/characters/${location.residents[index].id}',
              ),
            ),
          ),
        ),
      ],
    );
  }

  IconData get _locationIcon {
    final typeLower = location.type.toLowerCase();
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

class _InfoChip extends StatelessWidget {
  const _InfoChip({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: .circular(20),
        color: context.colors.primary.withValues(alpha: .1),
        border: .all(color: context.colors.primary, width: 1.5),
      ),
      child: Row(
        spacing: 6,
        mainAxisSize: .min,
        children: <Widget>[
          Icon(icon, size: 16, color: context.colors.primary),
          Text(
            label,
            style: context.episodeTitle.copyWith(
              color: context.colors.primary,
              fontWeight: .w600,
            ),
          ),
        ],
      ),
    );
  }
}
