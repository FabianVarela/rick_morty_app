import 'package:rick_morty_app/core/client/rick_morty_client.dart';
import 'package:rick_morty_app/features/detail/model/rick_morty_detail_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rick_morty_detail_repository.g.dart';

class RickMortyDetailRepository {
  const RickMortyDetailRepository(this._client);

  final RickMortyClient _client;

  Future<RickMortyDetailResult> fetchDetailData({required int id}) async {
    final queryBuilder = StringBuffer('query {')
      ..write('  character(id: $id) {')
      ..write('    id, name, status, species, type, gender, image, created,')
      ..write('    origin { id, name } location { id, name }')
      ..write('  }')
      ..write('}');

    final rickMortyQueryResult = await _client.getFromQuery(
      queryBuilder.toString(),
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
RickMortyDetailRepository rickMortyDetailRepo(RickMortyDetailRepoRef ref) {
  return RickMortyDetailRepository(ref.watch(rickMortyClientProvider));
}

@riverpod
Future<RickMortyDetailResult> fetchDetailData(
  FetchDetailDataRef ref, {
  required int id,
}) async {
  final rickMortyDetailRepository = ref.watch(rickMortyDetailRepoProvider);
  return rickMortyDetailRepository.fetchDetailData(id: id);
}
