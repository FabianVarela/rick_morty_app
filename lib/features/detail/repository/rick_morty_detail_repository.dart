import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rick_morty_app/core/graph_ql/graph_ql_provider.dart';
import 'package:rick_morty_app/features/detail/model/rick_morty_detail_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rick_morty_detail_repository.g.dart';

class RickMortyDetailRepository {
  const RickMortyDetailRepository(this._graphQlClient);

  final GraphQLClient _graphQlClient;

  Future<RickMortyDetailResult> fetchDetailData({required int id}) async {
    final queryBuilder = StringBuffer('query {')
      ..write('  character(id: $id) {')
      ..write('    id, name, status, species, type, gender, image, created,')
      ..write('    origin { id, name } location { id, name }')
      ..write('  }')
      ..write('}');

    final rickMortyQueryResult = await _graphQlClient.query(
      QueryOptions(document: gql(queryBuilder.toString())),
    );

    if (rickMortyQueryResult.hasException) {
      throw Exception(rickMortyQueryResult.exception?.toString());
    }

    return RickMortyDetailResult.fromJson(
      rickMortyQueryResult.data!['character'] as Map<String, dynamic>,
    );
  }
}

@riverpod
RickMortyDetailRepository rickMortyDetailRepo(Ref ref) {
  return RickMortyDetailRepository(ref.watch(graphQlClientProvider));
}
