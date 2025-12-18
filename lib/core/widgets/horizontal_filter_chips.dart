import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/widgets/custom_filter_chip.dart';

class FilterOption<T> {
  const FilterOption({
    required this.value,
    required this.label,
    this.avatar,
  });

  final T value;
  final String label;
  final Widget? avatar;
}

class HorizontalFilterChips<T> extends StatelessWidget {
  const HorizontalFilterChips({
    required this.options,
    required this.selectedValue,
    required this.onChanged,
    super.key,
  });

  final List<FilterOption<T>> options;
  final T selectedValue;
  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: SingleChildScrollView(
        scrollDirection: .horizontal,
        padding: const .symmetric(horizontal: 16, vertical: 12),
        child: Row(
          spacing: 8,
          children: options.map((option) {
            return CustomFilterChip(
              label: option.label,
              isSelected: option.value == selectedValue,
              onSelected: () => onChanged(option.value),
              avatar: option.avatar,
            );
          }).toList(),
        ),
      ),
    );
  }
}
