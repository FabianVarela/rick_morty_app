// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RickMortyEpisodeDetailResult _$RickMortyEpisodeDetailResultFromJson(
  Map<String, dynamic> json,
) => _RickMortyEpisodeDetailResult(
  id: json['id'] as String,
  name: json['name'] as String,
  episode: json['episode'] as String,
  airDate: json['air_date'] as String,
  characters:
      (json['characters'] as List<dynamic>?)
          ?.map(
            (e) => RickMortyEpisodeDetailCharacter.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const [],
);

_RickMortyEpisodeDetailCharacter _$RickMortyEpisodeDetailCharacterFromJson(
  Map<String, dynamic> json,
) => _RickMortyEpisodeDetailCharacter(
  id: json['id'] as String,
  name: json['name'] as String,
  status: json['status'] as String,
  image: json['image'] as String,
);
