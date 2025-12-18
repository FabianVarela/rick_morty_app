import 'package:rick_morty_app/features/location_detail/model/location_detail_model.dart';
import 'package:rick_morty_app/features/location_detail/repository/location_detail_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_detail_notifier.g.dart';

@riverpod
class RickMortyLocationDetail extends _$RickMortyLocationDetail {
  @override
  FutureOr<RickMortyLocationDetailResult> build(int id) async {
    final locationDetailRepository = ref.watch(
      rickMortyLocationDetailRepoProvider,
    );
    return locationDetailRepository.fetchLocationDetailData(id: id);
  }
}
