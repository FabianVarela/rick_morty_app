import 'package:graphql/client.dart';
import 'package:rick_morty_app/core/common/extensions.dart';
import 'package:rick_morty_app/core/graph_ql/graph_ql_provider.dart';
import 'package:rick_morty_app/features/episode_list/model/episode_list_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'episode_list_repository.g.dart';

class RickMortyEpisodeListRepository {
  const RickMortyEpisodeListRepository(this._graphQlClient);

  final GraphQLClient _graphQlClient;

  Future<RickMortyEpisodeListData> fetchEpisodeListData({
    required Map<String, String> filter,
  }) async {
    final queryBuilder = StringBuffer('query {')
      ..write('  episodes(filter: ${filter.toGraphQuery()}) {')
      ..write('    results {')
      ..write('       id, name, air_date, episode')
      ..write('    }')
      ..write('  }')
      ..write('}');

    final episodeQueryResult = await _graphQlClient.query(
      QueryOptions(document: gql(queryBuilder.toString())),
    );

    if (episodeQueryResult.hasException) {
      throw Exception(episodeQueryResult.exception?.toString());
    }

    return RickMortyEpisodeListData.fromJson(
      episodeQueryResult.data!['episodes'] as Map<String, dynamic>,
    );
  }
}

@riverpod
RickMortyEpisodeListRepository rickMortyEpisodeListRepo(Ref ref) {
  return RickMortyEpisodeListRepository(ref.watch(graphQlClientProvider));
}
