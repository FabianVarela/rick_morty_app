// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RickMortyEpisodeListData _$RickMortyEpisodeListDataFromJson(
  Map<String, dynamic> json,
) => _RickMortyEpisodeListData(
  results: (json['results'] as List<dynamic>)
      .map(
        (e) => RickMortyEpisodeListResult.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

_RickMortyEpisodeListResult _$RickMortyEpisodeListResultFromJson(
  Map<String, dynamic> json,
) => _RickMortyEpisodeListResult(
  id: json['id'] as String,
  name: json['name'] as String,
  airDate: json['air_date'] as String,
  episode: json['episode'] as String,
);
