import 'package:rick_morty_app/features/character_detail/model/character_detail_model.dart';
import 'package:rick_morty_app/features/character_detail/repository/character_detail_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'character_detail_notifier.g.dart';

@riverpod
class RickMortyDetail extends _$RickMortyDetail {
  @override
  FutureOr<RickMortyDetailResult> build(int id) async {
    final rickMortyDetailRepository = ref.watch(rickMortyDetailRepoProvider);
    return rickMortyDetailRepository.fetchDetailData(id: id);
  }
}
