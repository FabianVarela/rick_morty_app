import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_detail_model.freezed.dart';

part 'location_detail_model.g.dart';

@Freezed(toJson: false)
abstract class RickMortyLocationDetailResult
    with _$RickMortyLocationDetailResult {
  @JsonSerializable(createToJson: false)
  factory RickMortyLocationDetailResult({
    required String id,
    required String name,
    required String type,
    required String dimension,
    @Default([]) List<RickMortyLocationDetailResident> residents,
  }) = _RickMortyLocationDetailResult;

  factory RickMortyLocationDetailResult.fromJson(Map<String, dynamic> json) =>
      _$RickMortyLocationDetailResultFromJson(json);
}

@Freezed(toJson: false)
abstract class RickMortyLocationDetailResident
    with _$RickMortyLocationDetailResident {
  @JsonSerializable(createToJson: false)
  factory RickMortyLocationDetailResident({
    required String id,
    required String name,
    required String status,
    required String image,
  }) = _RickMortyLocationDetailResident;

  factory RickMortyLocationDetailResident.fromJson(
    Map<String, dynamic> json,
  ) => _$RickMortyLocationDetailResidentFromJson(json);
}
