import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:rick_morty_app/core/graph_ql/graph_ql_provider.dart';

import '../../factory/helpers.dart';

void main() {
  test('Check if graphQl injected is correct', () {
    // arrange
    final container = setProviderContainer();
    final client = container.read(graphQlClientProvider);

    // assert
    expect(client.link, isA<HttpLink>());
    expect(
      (client.link as HttpLink).uri,
      Uri.parse('https://rickandmortyapi.com/graphql'),
    );
  });
}
