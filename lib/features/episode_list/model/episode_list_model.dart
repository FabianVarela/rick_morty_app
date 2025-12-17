import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_list_model.freezed.dart';

part 'episode_list_model.g.dart';

@Freezed(toJson: false)
abstract class RickMortyEpisodeListData with _$RickMortyEpisodeListData {
  @JsonSerializable(createToJson: false)
  factory RickMortyEpisodeListData({
    required List<RickMortyEpisodeListResult> results,
  }) = _RickMortyEpisodeListData;

  factory RickMortyEpisodeListData.fromJson(Map<String, dynamic> json) =>
      _$RickMortyEpisodeListDataFromJson(json);
}

@Freezed(toJson: false)
abstract class RickMortyEpisodeListResult with _$RickMortyEpisodeListResult {
  @JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
  factory RickMortyEpisodeListResult({
    required String id,
    required String name,
    required String airDate,
    required String episode,
  }) = _RickMortyEpisodeListResult;

  factory RickMortyEpisodeListResult.fromJson(Map<String, dynamic> json) =>
      _$RickMortyEpisodeListResultFromJson(json);
}
