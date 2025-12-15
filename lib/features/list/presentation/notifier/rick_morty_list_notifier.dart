import 'dart:async';

import 'package:rick_morty_app/features/list/model/rick_morty_list_model.dart';
import 'package:rick_morty_app/features/list/repository/rick_morty_list_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rick_morty_list_notifier.g.dart';

typedef FilterData<T> = ({T filter, int page});

@riverpod
class CharacterList extends _$CharacterList {
  @override
  FutureOr<RickMortyListData> build(
    FilterData<Map<String, String>?> data,
  ) async {
    final rickMortyListRepository = ref.watch(rickMortyListRepoProvider);
    return await rickMortyListRepository.fetchListData(
      page: data.page,
      filter: data.filter,
    );
  }
}

@riverpod
class CharacterFilterQuery extends _$CharacterFilterQuery {
  Timer? _debounceTimer;

  @override
  Map<String, String>? build() {
    ref.onDispose(() => _debounceTimer?.cancel());
    return null;
  }

  void setQuery({Map<String, String>? query}) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      state = query;
    });
  }

  void clearQuery() {
    _debounceTimer?.cancel();
    state = null;
  }
}
