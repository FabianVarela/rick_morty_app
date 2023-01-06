import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rick_morty_list_model.freezed.dart';

part 'rick_morty_list_model.g.dart';

@Freezed(toJson: false)
class RickMortyListData with _$RickMortyListData {
  @JsonSerializable(createToJson: false)
  factory RickMortyListData({
    required RickMortyListInfo info,
    required List<RickMortyListResult> results,
  }) = _RickMortyListData;

  factory RickMortyListData.fromJson(Map<String, dynamic> json) =>
      _$RickMortyListDataFromJson(json);
}

@Freezed(toJson: false)
class RickMortyListInfo with _$RickMortyListInfo {
  @JsonSerializable(createToJson: false)
  factory RickMortyListInfo({
    required int count,
    required int pages,
  }) = _RickMortyListInfo;

  factory RickMortyListInfo.fromJson(Map<String, dynamic> json) =>
      _$RickMortyListInfoFromJson(json);
}

enum Status {
  @JsonValue('Alive')
  alive,
  @JsonValue('Dead')
  dead,
  @JsonValue('unknown')
  unknown,
}

enum Gender {
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
class RickMortyListResult with _$RickMortyListResult {
  @JsonSerializable(createToJson: false)
  factory RickMortyListResult({
    required String id,
    required String name,
    required String image,
    @Default(Status.unknown) Status status,
    @Default(Gender.unknown) Gender gender,
  }) = _RickMortyListResult;

  factory RickMortyListResult.fromJson(Map<String, dynamic> json) =>
      _$RickMortyListResultFromJson(json);
}
