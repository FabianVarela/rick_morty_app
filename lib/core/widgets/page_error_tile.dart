import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';

class PageErrorTile extends StatelessWidget {
  const PageErrorTile({
    required this.page,
    required this.onRetry,
    this.isGrid = false,
    super.key,
  });

  final int page;
  final VoidCallback onRetry;
  final bool isGrid;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: switch (isGrid) {
        true => Column(
          spacing: 12,
          mainAxisAlignment: .center,
          children: <Widget>[
            Text(
              'Error loading\npage $page',
              textAlign: .center,
              style: context.secondarySubtitle.copyWith(
                color: context.colors.textSecondary,
              ),
            ),
            _RetryButton(onRetry: onRetry),
          ],
        ),
        false => Row(
          spacing: 8,
          mainAxisAlignment: .spaceBetween,
          children: <Widget>[
            Text(
              'Error loading page: $page',
              style: context.secondarySubtitle.copyWith(
                color: context.colors.textSecondary,
              ),
            ),
            _RetryButton(onRetry: onRetry),
          ],
        ),
      },
    );
  }
}

class _RetryButton extends StatelessWidget {
  const _RetryButton({required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onRetry,
      child: const Text('Retry'),
    );
  }
}
