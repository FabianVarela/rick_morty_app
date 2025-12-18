import 'package:graphql/client.dart';
import 'package:rick_morty_app/core/graph_ql/graph_ql_provider.dart';
import 'package:rick_morty_app/features/episode_detail/model/episode_detail_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'episode_detail_repository.g.dart';

class RickMortyEpisodeDetailRepository {
  const RickMortyEpisodeDetailRepository(this._graphQlClient);

  final GraphQLClient _graphQlClient;

  Future<RickMortyEpisodeDetailResult> fetchEpisodeDetailData({
    required int id,
  }) async {
    final queryBuilder = StringBuffer('query {')
      ..write('  episode(id: $id) {')
      ..write('    id, name, episode, air_date,')
      ..write('    characters { id, name, status, image }')
      ..write('  }')
      ..write('}');

    final episodeDetailQueryResult = await _graphQlClient.query(
      QueryOptions(document: gql(queryBuilder.toString())),
    );

    if (episodeDetailQueryResult.hasException) {
      throw Exception(episodeDetailQueryResult.exception?.toString());
    }

    return RickMortyEpisodeDetailResult.fromJson(
      episodeDetailQueryResult.data!['episode'] as Map<String, dynamic>,
    );
  }
}

@riverpod
RickMortyEpisodeDetailRepository rickMortyEpisodeDetailRepo(Ref ref) {
  return RickMortyEpisodeDetailRepository(ref.watch(graphQlClientProvider));
}
