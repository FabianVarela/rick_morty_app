import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';
import 'package:rick_morty_app/core/widgets/custom_filter_chip.dart';

enum CharacterFilter { all, alive, dead, unknown }

class FilterTabs extends StatelessWidget {
  const FilterTabs({
    required this.selectedFilter,
    required this.onFilterChanged,
    super.key,
  });

  final CharacterFilter selectedFilter;
  final ValueChanged<CharacterFilter> onFilterChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: SingleChildScrollView(
        scrollDirection: .horizontal,
        padding: const .symmetric(horizontal: 16, vertical: 12),
        child: Row(
          spacing: 8,
          children: CharacterFilter.values.map((filter) {
            final isSelected = filter == selectedFilter;
            return CustomFilterChip(
              label: switch (filter) {
                .all => 'Todos',
                .alive => 'Vivo',
                .dead => 'Muerto',
                .unknown => 'Desconocido',
              },
              isSelected: isSelected,
              onSelected: () => onFilterChanged(filter),
              avatar: switch (filter) {
                .all => null,
                _ => SizedBox.square(
                  dimension: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: .circle,
                      color: switch (filter) {
                        .alive => context.colors.statusAlive,
                        .dead => context.colors.statusDead,
                        .unknown => context.colors.statusUnknown,
                        _ => Colors.transparent,
                      },
                    ),
                  ),
                ),
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
