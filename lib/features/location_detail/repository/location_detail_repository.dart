import 'package:graphql/client.dart';
import 'package:rick_morty_app/core/graph_ql/graph_ql_provider.dart';
import 'package:rick_morty_app/features/location_detail/model/location_detail_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_detail_repository.g.dart';

class RickMortyLocationDetailRepository {
  const RickMortyLocationDetailRepository(this._graphQlClient);

  final GraphQLClient _graphQlClient;

  Future<RickMortyLocationDetailResult> fetchLocationDetailData({
    required int id,
  }) async {
    final queryBuilder = StringBuffer('query {')
      ..write('  location(id: $id) {')
      ..write('    id, name, type, dimension,')
      ..write('    residents { id, name, status, image }')
      ..write('  }')
      ..write('}');

    final locationDetailQueryResult = await _graphQlClient.query(
      QueryOptions(document: gql(queryBuilder.toString())),
    );

    if (locationDetailQueryResult.hasException) {
      throw Exception(locationDetailQueryResult.exception?.toString());
    }

    return RickMortyLocationDetailResult.fromJson(
      locationDetailQueryResult.data!['location'] as Map<String, dynamic>,
    );
  }
}

@riverpod
RickMortyLocationDetailRepository rickMortyLocationDetailRepo(Ref ref) {
  return RickMortyLocationDetailRepository(ref.watch(graphQlClientProvider));
}
