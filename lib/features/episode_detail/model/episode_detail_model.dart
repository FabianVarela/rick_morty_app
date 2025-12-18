import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_detail_model.freezed.dart';

part 'episode_detail_model.g.dart';

@Freezed(toJson: false)
abstract class RickMortyEpisodeDetailResult
    with _$RickMortyEpisodeDetailResult {
  @JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
  factory RickMortyEpisodeDetailResult({
    required String id,
    required String name,
    required String episode,
    required String airDate,
    @Default([]) List<RickMortyEpisodeDetailCharacter> characters,
  }) = _RickMortyEpisodeDetailResult;

  factory RickMortyEpisodeDetailResult.fromJson(Map<String, dynamic> json) =>
      _$RickMortyEpisodeDetailResultFromJson(json);
}

@Freezed(toJson: false)
abstract class RickMortyEpisodeDetailCharacter
    with _$RickMortyEpisodeDetailCharacter {
  @JsonSerializable(createToJson: false)
  factory RickMortyEpisodeDetailCharacter({
    required String id,
    required String name,
    required String status,
    required String image,
  }) = _RickMortyEpisodeDetailCharacter;

  factory RickMortyEpisodeDetailCharacter.fromJson(Map<String, dynamic> json) =>
      _$RickMortyEpisodeDetailCharacterFromJson(json);
}
