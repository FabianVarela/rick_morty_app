import 'package:flutter/material.dart';
import 'package:rick_morty_app/core/gen/assets.gen.dart';

class EmptyContainer extends StatelessWidget {
  const EmptyContainer({required this.message, super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Column(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox.fromSize(
          size: Size(size.width * .7, size.height * .35),
          child: Assets.images.rickAndMortyEmpty.image(fit: .cover),
        ),
        Text(
          message,
          style: const TextStyle(color: Colors.white70, fontSize: 16),
        ),
      ],
    );
  }
}
