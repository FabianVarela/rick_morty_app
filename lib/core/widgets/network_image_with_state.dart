import 'package:flutter/material.dart';

class NetworkImageWithState extends StatelessWidget {
  const NetworkImageWithState({
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.placeholderIcon = Icons.person,
    this.iconSize = 60,
    super.key,
  });

  final String imageUrl;
  final BoxFit fit;
  final IconData placeholderIcon;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: fit,
      errorBuilder: (_, _, _) => ColoredBox(
        color: Colors.grey.withValues(alpha: .8),
        child: Icon(placeholderIcon, size: iconSize, color: Colors.white38),
      ),
      loadingBuilder: (_, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return ColoredBox(
          color: Colors.grey.withValues(alpha: .8),
          child: Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: Colors.white38,
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                  : null,
            ),
          ),
        );
      },
    );
  }
}
