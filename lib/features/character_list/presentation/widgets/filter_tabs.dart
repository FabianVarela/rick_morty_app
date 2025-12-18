import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';
import 'package:rick_morty_app/core/widgets/horizontal_filter_chips.dart';

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
    return HorizontalFilterChips<CharacterFilter>(
      options: CharacterFilter.values.map((filter) {
        return FilterOption<CharacterFilter>(
          value: filter,
          label: switch (filter) {
            .all => 'Todos',
            .alive => 'Vivo',
            .dead => 'Muerto',
            .unknown => 'Desconocido',
          },
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
      selectedValue: selectedFilter,
      onChanged: onFilterChanged,
    );
  }
}
