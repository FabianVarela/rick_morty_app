import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

ProviderContainer setProviderContainer({List<Override> overrides = const []}) {
  final container = ProviderContainer.test(overrides: overrides);
  addTearDown(container.dispose);
  return container;
}
