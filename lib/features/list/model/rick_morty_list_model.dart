import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rick_morty_list_model.freezed.dart';

part 'rick_morty_list_model.g.dart';

@Freezed(toJson: false)
abstract class RickMortyListData with _$RickMortyListData {
  @JsonSerializable(createToJson: false)
  factory RickMortyListData({
    required RickMortyListInfo info,
    required List<RickMortyListResult> results,
  }) = _RickMortyListData;

  factory RickMortyListData.fromJson(Map<String, dynamic> json) =>
      _$RickMortyListDataFromJson(json);
}

@Freezed(toJson: false)
abstract class RickMortyListInfo with _$RickMortyListInfo {
  @JsonSerializable(createToJson: false)
  factory RickMortyListInfo({required int count, required int pages}) =
      _RickMortyListInfo;

  factory RickMortyListInfo.fromJson(Map<String, dynamic> json) =>
      _$RickMortyListInfoFromJson(json);
}

enum ListStatus {
  @JsonValue('Alive')
  alive,
  @JsonValue('Dead')
  dead,
  @JsonValue('unknown')
  unknown,
}

enum ListGender {
  @JsonValue('Female')
  female,
  @JsonValue('Male')
  male,
  @JsonValue('Genderless')
  genderless,
  @JsonValue('unknown')
  unknown,
}

@Freezed(toJson: false)
abstract class RickMortyListResult with _$RickMortyListResult {
  @JsonSerializable(createToJson: false)
  factory RickMortyListResult({
    required String id,
    required String name,
    required String image,
    @Default(ListStatus.unknown) ListStatus status,
    @Default(ListGender.unknown) ListGender gender,
  }) = _RickMortyListResult;

  factory RickMortyListResult.fromJson(Map<String, dynamic> json) =>
      _$RickMortyListResultFromJson(json);
}
