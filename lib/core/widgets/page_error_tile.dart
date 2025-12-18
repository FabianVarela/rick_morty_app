import 'package:flutter/material.dart';

class PageErrorTile extends StatelessWidget {
  const PageErrorTile({required this.page, required this.onRetry, super.key});

  final int page;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Row(
        spacing: 8,
        mainAxisAlignment: .spaceBetween,
        children: <Widget>[
          Text('Error loading page: $page'),
          ElevatedButton(
            onPressed: onRetry,
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
