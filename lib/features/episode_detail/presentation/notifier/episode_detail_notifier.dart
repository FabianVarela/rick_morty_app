import 'package:rick_morty_app/features/episode_detail/model/episode_detail_model.dart';
import 'package:rick_morty_app/features/episode_detail/repository/episode_detail_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'episode_detail_notifier.g.dart';

@riverpod
class RickMortyEpisodeDetail extends _$RickMortyEpisodeDetail {
  @override
  FutureOr<RickMortyEpisodeDetailResult> build(int id) async {
    final episodeDetailRepository = ref.watch(
      rickMortyEpisodeDetailRepoProvider,
    );
    return episodeDetailRepository.fetchEpisodeDetailData(id: id);
  }
}
