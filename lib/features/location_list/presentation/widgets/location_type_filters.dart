import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/widgets/custom_filter_chip.dart';

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
    return SingleChildScrollView(
      scrollDirection: .horizontal,
      padding: const .symmetric(horizontal: 16, vertical: 12),
      child: Row(
        spacing: 8,
        children: <Widget>[
          CustomFilterChip(
            label: 'Todos',
            isSelected: selectedType == null,
            onSelected: () => onTypeChanged(null),
          ),
          CustomFilterChip(
            label: 'Planeta',
            isSelected: selectedType == 'Planet',
            onSelected: () => onTypeChanged('Planet'),
          ),
          CustomFilterChip(
            label: 'Estación Espacial',
            isSelected: selectedType == 'Space station',
            onSelected: () => onTypeChanged('Space station'),
          ),
          CustomFilterChip(
            label: 'Microverso',
            isSelected: selectedType == 'Microverse',
            onSelected: () => onTypeChanged('Microverse'),
          ),
        ],
      ),
    );
  }
}
