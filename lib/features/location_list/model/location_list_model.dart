import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_list_model.freezed.dart';
part 'location_list_model.g.dart';

@Freezed(toJson: false)
abstract class RickMortyLocationListData with _$RickMortyLocationListData {
  @JsonSerializable(createToJson: false)
  factory RickMortyLocationListData({
    required RickMortyLocationListInfo info,
    required List<RickMortyLocationListResult> results,
  }) = _RickMortyLocationListData;

  factory RickMortyLocationListData.fromJson(Map<String, dynamic> json) =>
      _$RickMortyLocationListDataFromJson(json);
}

@Freezed(toJson: false)
abstract class RickMortyLocationListInfo with _$RickMortyLocationListInfo {
  @JsonSerializable(createToJson: false)
  factory RickMortyLocationListInfo({
    required int count,
    required int pages,
  }) = _RickMortyLocationListInfo;

  factory RickMortyLocationListInfo.fromJson(Map<String, dynamic> json) =>
      _$RickMortyLocationListInfoFromJson(json);
}

@Freezed(toJson: false)
abstract class RickMortyLocationListResult with _$RickMortyLocationListResult {
  @JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
  factory RickMortyLocationListResult({
    required String id,
    required String name,
    required String type,
    required String dimension,
  }) = _RickMortyLocationListResult;

  factory RickMortyLocationListResult.fromJson(Map<String, dynamic> json) =>
      _$RickMortyLocationListResultFromJson(json);
}
