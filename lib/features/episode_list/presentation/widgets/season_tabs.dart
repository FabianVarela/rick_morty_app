import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/widgets/horizontal_filter_chips.dart';

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
    return HorizontalFilterChips<int>(
      options: .generate(totalSeasons, (index) {
        final season = index + 1;
        return FilterOption<int>(value: season, label: 'Temporada $season');
      }),
      selectedValue: selectedSeason,
      onChanged: onSeasonChanged,
    );
  }
}
