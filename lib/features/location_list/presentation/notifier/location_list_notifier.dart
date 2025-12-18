import 'dart:async';

import 'package:rick_morty_app/features/location_list/model/location_list_model.dart';
import 'package:rick_morty_app/features/location_list/repository/location_list_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_list_notifier.g.dart';

typedef FilterData<T> = ({T filter, int page});

@riverpod
class LocationList extends _$LocationList {
  @override
  FutureOr<RickMortyLocationListData> build(
    FilterData<Map<String, String>?> data,
  ) async {
    final locationListRepository = ref.watch(
      rickMortyLocationListRepoProvider,
    );

    return await locationListRepository.fetchLocationListData(
      page: data.page,
      filter: data.filter,
    );
  }
}

@riverpod
class LocationFilterQuery extends _$LocationFilterQuery {
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
