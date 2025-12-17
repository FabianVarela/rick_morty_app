import 'package:flutter/material.dart';

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
          color: const Color(0xFF142217),
        ),
        child: Padding(
          padding: const .all(8),
          child: Icon(icon, color: const Color(0xFF4EAD7F)),
        ),
      ),
      _TitleSubtitle(title: label, subtitle: value),
    ];

    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: .circular(12),
          color: const Color(0xFF1E3A2F),
          border: .all(color: const Color(0xFF2D5A47)),
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
        Text(
          title.toUpperCase(),
          style: const TextStyle(
            fontSize: 10,
            fontWeight: .w600,
            letterSpacing: 1.2,
            color: Colors.white54,
          ),
        ),
        Text(
          subtitle,
          maxLines: 2,
          overflow: .ellipsis,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: .w600,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
