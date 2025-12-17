import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_detail_model.freezed.dart';

part 'character_detail_model.g.dart';

enum DetailStatus {
  @JsonValue('Alive')
  alive,
  @JsonValue('Dead')
  dead,
  @JsonValue('unknown')
  unknown,
}

enum DetailGender {
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
abstract class RickMortyDetailResult with _$RickMortyDetailResult {
  @JsonSerializable(createToJson: false)
  factory RickMortyDetailResult({
    required String id,
    required String name,
    @Default(DetailStatus.unknown) DetailStatus status,
    required String species,
    @Default('') String type,
    @Default(DetailGender.unknown) DetailGender gender,
    required String image,
    required DateTime created,
    required RickMortyOriginResult origin,
    required RickMortyLocationResult location,
    @Default([]) List<RickMortyEpisodeResult> episode,
  }) = _RickMortyDetailResult;

  factory RickMortyDetailResult.fromJson(Map<String, dynamic> json) =>
      _$RickMortyDetailResultFromJson(json);
}

@Freezed(toJson: false)
abstract class RickMortyOriginResult with _$RickMortyOriginResult {
  @JsonSerializable(createToJson: false)
  factory RickMortyOriginResult({String? id, String? name}) =
      _RickMortyOriginResult;

  factory RickMortyOriginResult.fromJson(Map<String, dynamic> json) =>
      _$RickMortyOriginResultFromJson(json);
}

@Freezed(toJson: false)
abstract class RickMortyLocationResult with _$RickMortyLocationResult {
  @JsonSerializable(createToJson: false)
  factory RickMortyLocationResult({String? id, String? name}) =
      _RickMortyLocationResult;

  factory RickMortyLocationResult.fromJson(Map<String, dynamic> json) =>
      _$RickMortyLocationResultFromJson(json);
}

@Freezed(toJson: false)
abstract class RickMortyEpisodeResult with _$RickMortyEpisodeResult {
  @JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
  factory RickMortyEpisodeResult({
    required String id,
    required String name,
    required String airDate,
    required String episode,
  }) = _RickMortyEpisodeResult;

  factory RickMortyEpisodeResult.fromJson(Map<String, dynamic> json) =>
      _$RickMortyEpisodeResultFromJson(json);
}
