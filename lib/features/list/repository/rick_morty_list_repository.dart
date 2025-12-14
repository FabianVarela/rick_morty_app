import 'package:graphql/client.dart';
import 'package:rick_morty_app/core/common/extensions.dart';
import 'package:rick_morty_app/core/graph_ql/graph_ql_provider.dart';
import 'package:rick_morty_app/features/list/model/rick_morty_list_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rick_morty_list_repository.g.dart';

class RickMortyListRepository {
  const RickMortyListRepository(this._graphQlClient);

  final GraphQLClient _graphQlClient;

  Future<RickMortyListData> fetchListData({
    int page = 1,
    Map<String, String>? filter,
  }) async {
    final filterText = filter != null ? 'filter: ${filter.toGraphQuery()}' : '';
    final queryBuilder = StringBuffer('query {')
      ..write('  characters(page: $page, $filterText) {')
      ..write('    info { count, pages }')
      ..write('    results {')
      ..write('       id, name, image, status, gender, species, ')
      ..write('       location { name }')
      ..write('    }')
      ..write('  }')
      ..write('}');

    final rickMortyQueryResult = await _graphQlClient.query(
      QueryOptions(document: gql(queryBuilder.toString())),
    );

    if (rickMortyQueryResult.hasException) {
      throw Exception(rickMortyQueryResult.exception?.toString());
    }

    return RickMortyListData.fromJson(
      rickMortyQueryResult.data!['characters'] as Map<String, dynamic>,
    );
  }
}

@riverpod
RickMortyListRepository rickMortyListRepo(Ref ref) {
  return RickMortyListRepository(ref.watch(graphQlClientProvider));
}
