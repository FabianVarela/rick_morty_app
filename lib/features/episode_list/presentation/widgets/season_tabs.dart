import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';

class SeasonTabs extends StatelessWidget {
  const SeasonTabs({
    required this.selectedSeason,
    required this.onSeasonChanged,
    super.key,
  });

  final int selectedSeason;
  final ValueChanged<int> onSeasonChanged;

  static const int totalSeasons = 7;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: SingleChildScrollView(
        scrollDirection: .horizontal,
        padding: const .symmetric(horizontal: 16, vertical: 12),
        child: Row(
          spacing: 8,
          children: .generate(
            totalSeasons,
            (index) {
              final season = index + 1;
              final isSelected = season == selectedSeason;

              return FilterChip(
                label: Text('Temporada $season'),
                selected: isSelected,
                onSelected: (_) => onSeasonChanged(season),
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
                padding: const .symmetric(horizontal: 16, vertical: 8),
              );
            },
          ),
        ),
      ),
    );
  }
}
