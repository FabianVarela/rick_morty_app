// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RickMortyListData _$RickMortyListDataFromJson(Map<String, dynamic> json) =>
    _RickMortyListData(
      info: RickMortyListInfo.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => RickMortyListResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_RickMortyListInfo _$RickMortyListInfoFromJson(Map<String, dynamic> json) =>
    _RickMortyListInfo(
      count: (json['count'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
    );

_RickMortyListResult _$RickMortyListResultFromJson(Map<String, dynamic> json) =>
    _RickMortyListResult(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      status:
          $enumDecodeNullable(_$ListStatusEnumMap, json['status']) ??
          ListStatus.unknown,
      gender:
          $enumDecodeNullable(_$ListGenderEnumMap, json['gender']) ??
          ListGender.unknown,
      species: json['species'] as String? ?? '',
      location: json['location'] == null
          ? null
          : RickMortyListLocation.fromJson(
              json['location'] as Map<String, dynamic>,
            ),
    );

const _$ListStatusEnumMap = {
  ListStatus.alive: 'Alive',
  ListStatus.dead: 'Dead',
  ListStatus.unknown: 'unknown',
};

const _$ListGenderEnumMap = {
  ListGender.female: 'Female',
  ListGender.male: 'Male',
  ListGender.genderless: 'Genderless',
  ListGender.unknown: 'unknown',
};

_RickMortyListLocation _$RickMortyListLocationFromJson(
  Map<String, dynamic> json,
) => _RickMortyListLocation(name: json['name'] as String?);
