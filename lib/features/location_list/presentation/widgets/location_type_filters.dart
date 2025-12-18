import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/widgets/horizontal_filter_chips.dart';

class LocationTypeFilters extends StatelessWidget {
  const LocationTypeFilters({
    required this.selectedType,
    required this.onTypeChanged,
    super.key,
  });

  final String? selectedType;
  final ValueChanged<String?> onTypeChanged;

  @override
  Widget build(BuildContext context) {
    return HorizontalFilterChips<String?>(
      options: const <FilterOption<String?>>[
        FilterOption(value: null, label: 'Todos'),
        FilterOption(value: 'Planet', label: 'Planeta'),
        FilterOption(value: 'Space station', label: 'Estación Espacial'),
        FilterOption(value: 'Microverse', label: 'Microverso'),
      ],
      selectedValue: selectedType,
      onChanged: onTypeChanged,
    );
  }
}
