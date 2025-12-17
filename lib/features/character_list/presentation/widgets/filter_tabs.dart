import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';

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
            return FilterChip(
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
              label: Text(
                switch (filter) {
                  .all => 'Todos',
                  .alive => 'Vivo',
                  .dead => 'Muerto',
                  .unknown => 'Desconocido',
                },
              ),
              selected: isSelected,
              onSelected: (_) => onFilterChanged(filter),
              backgroundColor: context.colors.borderColor,
              selectedColor: context.colors.primary,
              labelStyle: context.normalText.copyWith(
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? Colors.black : context.colors.textPrimary,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: .circular(20),
                side: BorderSide(
                  color: context.colors.primary,
                  width: isSelected ? 2 : 1,
                ),
              ),
              showCheckmark: false,
              padding: const .symmetric(horizontal: 12, vertical: 8),
            );
          }).toList(),
        ),
      ),
    );
  }
}
