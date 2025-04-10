import 'package:rick_morty_app/features/list/model/rick_morty_list_model.dart';
import 'package:rick_morty_app/features/list/repository/rick_morty_list_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rick_morty_list_notifier.g.dart';

@riverpod
class RickMortyList extends _$RickMortyList {
  @override
  FutureOr<RickMortyListData> build() {
    final rickMortyListRepository = ref.watch(rickMortyListRepoProvider);
    return rickMortyListRepository.fetchListData();
  }

  Future<void> fetchListData({
    int page = 1,
    Map<String, String>? filter,
  }) async {
    state = const AsyncLoading();

    final rickMortyListRepository = ref.watch(rickMortyListRepoProvider);
    final result = rickMortyListRepository.fetchListData(
      page: page,
      filter: filter,
    );

    state = await AsyncValue.guard(() => result);
  }
}
