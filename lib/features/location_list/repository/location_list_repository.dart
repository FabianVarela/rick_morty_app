import 'package:graphql/client.dart';
import 'package:rick_morty_app/core/common/extensions.dart';
import 'package:rick_morty_app/core/graph_ql/graph_ql_provider.dart';
import 'package:rick_morty_app/features/location_list/model/location_list_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_list_repository.g.dart';

class RickMortyLocationListRepository {
  const RickMortyLocationListRepository(this._graphQlClient);

  final GraphQLClient _graphQlClient;

  Future<RickMortyLocationListData> fetchLocationListData({
    int page = 1,
    Map<String, String>? filter,
  }) async {
    final filterText = filter != null && filter.isNotEmpty
        ? 'filter: ${filter.toGraphQuery()}'
        : '';

    final queryBuilder = StringBuffer('query {')
      ..write('  locations(page: $page, $filterText) {')
      ..write('    info { count, pages }')
      ..write('    results {')
      ..write('       id, name, type, dimension')
      ..write('    }')
      ..write('  }')
      ..write('}');

    final locationQueryResult = await _graphQlClient.query(
      QueryOptions(document: gql(queryBuilder.toString())),
    );

    if (locationQueryResult.hasException) {
      throw Exception(locationQueryResult.exception?.toString());
    }

    return RickMortyLocationListData.fromJson(
      locationQueryResult.data!['locations'] as Map<String, dynamic>,
    );
  }
}

@riverpod
RickMortyLocationListRepository rickMortyLocationListRepo(Ref ref) {
  return RickMortyLocationListRepository(ref.watch(graphQlClientProvider));
}
