import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';

enum InfoCardPosition { row, column }

class InfoCard extends StatelessWidget {
  const InfoCard({
    required this.icon,
    required this.label,
    required this.value,
    required this.position,
    super.key,
  });

  final IconData icon;
  final String label;
  final String value;
  final InfoCardPosition position;

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: .circular(8),
          color: context.colors.backgroundInfoCard,
        ),
        child: Padding(
          padding: const .all(8),
          child: Icon(icon, color: context.colors.primary),
        ),
      ),
      _TitleSubtitle(title: label, subtitle: value),
    ];

    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: .circular(12),
          color: context.colors.backgroundCard,
          border: .all(color: context.colors.borderColor),
        ),
        child: Padding(
          padding: const .all(16),
          child: switch (position) {
            InfoCardPosition.row => Row(
              spacing: 16,
              mainAxisSize: .min,
              children: children,
            ),
            InfoCardPosition.column => Column(
              spacing: 16,
              mainAxisSize: .min,
              crossAxisAlignment: .start,
              children: children,
            ),
          },
        ),
      ),
    );
  }
}

class _TitleSubtitle extends StatelessWidget {
  const _TitleSubtitle({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      mainAxisSize: .min,
      crossAxisAlignment: .start,
      children: <Widget>[
        Text(title.toUpperCase(), style: context.label),
        Text(
          subtitle,
          maxLines: 2,
          overflow: .ellipsis,
          style: context.buttonText,
        ),
      ],
    );
  }
}
