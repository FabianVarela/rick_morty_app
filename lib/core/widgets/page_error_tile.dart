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
    final retryButon = ElevatedButton(
      onPressed: onRetry,
      child: const Text('Retry'),
    );

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
            retryButon,
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
            retryButon,
          ],
        ),
      },
    );
  }
}
