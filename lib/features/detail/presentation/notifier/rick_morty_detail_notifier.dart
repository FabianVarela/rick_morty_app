import 'package:rick_morty_app/features/detail/model/rick_morty_detail_model.dart';
import 'package:rick_morty_app/features/detail/repository/rick_morty_detail_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rick_morty_detail_notifier.g.dart';

@riverpod
class RickMortyDetail extends _$RickMortyDetail {
  @override
  FutureOr<RickMortyDetailResult> build(int id) async {
    final rickMortyDetailRepository = ref.watch(rickMortyDetailRepoProvider);
    return rickMortyDetailRepository.fetchDetailData(id: id);
  }
}
