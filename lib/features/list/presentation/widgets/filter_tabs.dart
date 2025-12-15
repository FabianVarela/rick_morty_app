import 'package:flutter/material.dart';

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
        scrollDirection: Axis.horizontal,
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
                        .alive => Colors.green,
                        .dead => Colors.red,
                        .unknown => Colors.grey,
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
              backgroundColor: const Color(0xFF2D5F3F),
              selectedColor: const Color(0xFF4EAD7F),
              labelStyle: TextStyle(
                color: isSelected ? Colors.black : Colors.white,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: .circular(20),
                side: BorderSide(
                  color: const Color(0xFF4EAD7F),
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
