import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rick_morty_app/features/detail/presentation/notifier/rick_morty_detail_notifier.dart';

class RickMortyDetailView extends ConsumerWidget {
  const RickMortyDetailView({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailResult = ref.watch(rickMortyDetailProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          detailResult.maybeWhen(
            data: (data) => data.name,
            orElse: () => 'Loading',
          ),
        ),
      ),
      body: detailResult.when(
        data: (data) => Center(
          child: Text(data.name),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (e, _) => const Center(
          child: Text('Error getting data'),
        ),
      ),
    );
  }
}
