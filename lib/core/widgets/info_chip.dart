import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';

enum InfoChipStyle { filled, outlined }

class InfoChip extends StatelessWidget {
  const InfoChip({
    required this.label,
    this.style = .outlined,
    this.icon,
    super.key,
  });

  final String label;
  final InfoChipStyle style;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Container(
      padding: const .symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: .circular(20),
        color: switch (style) {
          .filled => colors.backgroundCard,
          .outlined => colors.primary.withValues(alpha: .1),
        },
        border: style == .outlined
            ? .all(color: colors.primary, width: 1.5)
            : null,
      ),
      child: Row(
        spacing: icon != null ? 6 : 0,
        mainAxisSize: .min,
        children: <Widget>[
          if (icon != null) Icon(icon, size: 16, color: colors.primary),
          Text(
            label,
            style: context.episodeTitle.copyWith(
              fontWeight: .w600,
              color: colors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
