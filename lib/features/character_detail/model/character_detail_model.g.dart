// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RickMortyDetailResult _$RickMortyDetailResultFromJson(
  Map<String, dynamic> json,
) => _RickMortyDetailResult(
  id: json['id'] as String,
  name: json['name'] as String,
  status:
      $enumDecodeNullable(_$DetailStatusEnumMap, json['status']) ??
      DetailStatus.unknown,
  species: json['species'] as String,
  type: json['type'] as String? ?? '',
  gender:
      $enumDecodeNullable(_$DetailGenderEnumMap, json['gender']) ??
      DetailGender.unknown,
  image: json['image'] as String,
  created: DateTime.parse(json['created'] as String),
  origin: RickMortyOriginResult.fromJson(
    json['origin'] as Map<String, dynamic>,
  ),
  location: RickMortyLocationResult.fromJson(
    json['location'] as Map<String, dynamic>,
  ),
  episode:
      (json['episode'] as List<dynamic>?)
          ?.map(
            (e) => RickMortyEpisodeResult.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

const _$DetailStatusEnumMap = {
  DetailStatus.alive: 'Alive',
  DetailStatus.dead: 'Dead',
  DetailStatus.unknown: 'unknown',
};

const _$DetailGenderEnumMap = {
  DetailGender.female: 'Female',
  DetailGender.male: 'Male',
  DetailGender.genderless: 'Genderless',
  DetailGender.unknown: 'unknown',
};

_RickMortyOriginResult _$RickMortyOriginResultFromJson(
  Map<String, dynamic> json,
) => _RickMortyOriginResult(
  id: json['id'] as String?,
  name: json['name'] as String?,
);

_RickMortyLocationResult _$RickMortyLocationResultFromJson(
  Map<String, dynamic> json,
) => _RickMortyLocationResult(
  id: json['id'] as String?,
  name: json['name'] as String?,
);

_RickMortyEpisodeResult _$RickMortyEpisodeResultFromJson(
  Map<String, dynamic> json,
) => _RickMortyEpisodeResult(
  id: json['id'] as String,
  name: json['name'] as String,
  airDate: json['air_date'] as String,
  episode: json['episode'] as String,
);
