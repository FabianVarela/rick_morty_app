import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';

class NetworkImageWithState extends StatelessWidget {
  const NetworkImageWithState({
    required this.imageUrl,
    this.fit = .cover,
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
        color: context.colors.backgroundInfoCard,
        child: Icon(
          placeholderIcon,
          size: iconSize,
          color: context.colors.textTertiary,
        ),
      ),
      loadingBuilder: (_, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return ColoredBox(
          color: context.colors.backgroundInfoCard,
          child: Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: context.colors.primary,
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
