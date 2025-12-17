import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';

class CustomFilterChip extends StatelessWidget {
  const CustomFilterChip({
    required this.label,
    required this.isSelected,
    required this.onSelected,
    this.avatar,
    super.key,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onSelected;
  final Widget? avatar;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      avatar: avatar,
      label: Text(label),
      selected: isSelected,
      onSelected: (_) => onSelected(),
      backgroundColor: context.colors.borderColor,
      selectedColor: context.colors.primary,
      labelStyle: context.normalText.copyWith(
        fontWeight: isSelected ? .bold : .normal,
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
  }
}
