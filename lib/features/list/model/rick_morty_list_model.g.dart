// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rick_morty_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RickMortyListData _$$_RickMortyListDataFromJson(Map<String, dynamic> json) =>
    _$_RickMortyListData(
      info: RickMortyListInfo.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => RickMortyListResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_RickMortyListInfo _$$_RickMortyListInfoFromJson(Map<String, dynamic> json) =>
    _$_RickMortyListInfo(
      count: json['count'] as int,
      pages: json['pages'] as int,
    );

_$_RickMortyListResult _$$_RickMortyListResultFromJson(
        Map<String, dynamic> json) =>
    _$_RickMortyListResult(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      status: $enumDecodeNullable(_$ListStatusEnumMap, json['status']) ??
          ListStatus.unknown,
      gender: $enumDecodeNullable(_$ListGenderEnumMap, json['gender']) ??
          ListGender.unknown,
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
