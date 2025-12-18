import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';

enum StatusType { alive, dead, unknown }

enum StatusBadgeSize { small, medium }

class StatusBadge extends StatelessWidget {
  const StatusBadge({required this.status, this.size = .medium, super.key});

  final StatusType status;
  final StatusBadgeSize size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: .circular(size == .small ? 12 : 16),
        color: switch (status) {
          .alive => context.colors.statusAlive,
          .dead => context.colors.statusDead,
          .unknown => context.colors.statusUnknown,
        },
      ),
      child: Row(
        spacing: size == .small ? 4 : 6,
        mainAxisSize: .min,
        children: <Widget>[
          SizedBox.square(
            dimension: size == .small ? 6 : 8,
            child: const DecoratedBox(
              decoration: BoxDecoration(shape: .circle, color: Colors.white),
            ),
          ),
          Text(
            _statusText.toUpperCase(),
            style: context.badge.copyWith(
              fontSize: size == .small ? 10 : 12,
              fontWeight: .bold,
            ),
          ),
        ],
      ),
    );
  }

  String get _statusText {
    return switch (status) {
      .alive => 'Alive',
      .dead => 'Dead',
      .unknown => 'Unknown',
    };
  }
}
