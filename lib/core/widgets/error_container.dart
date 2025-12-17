import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/gen/assets.gen.dart';
import 'package:rick_morty_app/core/theme/app_theme.dart';

class ErrorContainer extends StatelessWidget {
  const ErrorContainer({
    required this.title,
    required this.error,
    required this.onRetry,
    super.key,
  });

  final String title;
  final String error;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Column(
      spacing: 12,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const .only(bottom: 12),
          child: SizedBox.fromSize(
            size: Size(size.width * .6, size.height * .3),
            child: Assets.images.rickAndMortyError.image(fit: .cover),
          ),
        ),
        Text(title, style: context.subtitle),
        Text(
          error,
          style: context.secondaryInfo.copyWith(color: Colors.white70),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const .only(top: 8),
          child: ElevatedButton(
            onPressed: onRetry,
            child: const Text('Retry'),
          ),
        ),
      ],
    );
  }
}
