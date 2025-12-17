import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/widgets/custom_filter_chip.dart';

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
          children: .generate(totalSeasons, (index) {
            final season = index + 1;
            return CustomFilterChip(
              label: 'Temporada $season',
              isSelected: season == selectedSeason,
              onSelected: () => onSeasonChanged(season),
            );
          }),
        ),
      ),
    );
  }
}
