import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RickMortyDetailView extends ConsumerWidget {
  const RickMortyDetailView({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold();
  }
}
