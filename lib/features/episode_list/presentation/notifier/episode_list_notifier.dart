import 'dart:async';

import 'package:rick_morty_app/features/episode_list/model/episode_list_model.dart';
import 'package:rick_morty_app/features/episode_list/repository/episode_list_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'episode_list_notifier.g.dart';

@riverpod
class EpisodeList extends _$EpisodeList {
  @override
  FutureOr<RickMortyEpisodeListData> build(Map<String, String> filter) async {
    final episodeListRepository = ref.watch(rickMortyEpisodeListRepoProvider);
    return await episodeListRepository.fetchEpisodeListData(filter: filter);
  }
}

@riverpod
class EpisodeFilterQuery extends _$EpisodeFilterQuery {
  Timer? _debounceTimer;

  @override
  Map<String, String> build() {
    ref.onDispose(() => _debounceTimer?.cancel());
    return {'episode': 'S01'};
  }

  void setQuery({required Map<String, String> query}) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      state = query;
    });
  }

  void clearQuery() {
    _debounceTimer?.cancel();
    state = {'episode': 'S01'};
  }
}
