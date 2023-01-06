import 'package:graphql/client.dart';
import 'package:rick_morty_app/core/graph_ql/graph_ql_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rick_morty_client.g.dart';

class RickMortyClient {
  const RickMortyClient(this._graphQlClient);

  final GraphQLClient _graphQlClient;

  Future<QueryResult> getFromQuery(String query) async {
    return _graphQlClient.query(
      QueryOptions(document: gql(query)),
    );
  }
}

@riverpod
RickMortyClient rickMortyClient(RickMortyClientRef ref) {
  return RickMortyClient(ref.watch(graphQlClientProvider));
}
