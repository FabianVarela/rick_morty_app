import 'package:rick_morty_app/features/list/model/rick_morty_list_model.dart';
import 'package:rick_morty_app/features/list/repository/rick_morty_list_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rick_morty_list_notifier.g.dart';

@riverpod
class RickMortyList extends _$RickMortyList {
  @override
  Future<RickMortyListData> build() async => _fetchData();

  Future<void> fetchListData({
    int page = 1,
    Map<String, String>? filter,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => _fetchData(page: page, filter: filter),
    );
  }

  Future<RickMortyListData> _fetchData({
    int page = 1,
    Map<String, String>? filter,
  }) async {
    final rickMortyListRepository = ref.watch(rickMortyListRepoProvider);
    return filter == null
        ? rickMortyListRepository.fetchListData(page: page)
        : rickMortyListRepository.fetchListData(page: page, filter: filter);
  }
}
