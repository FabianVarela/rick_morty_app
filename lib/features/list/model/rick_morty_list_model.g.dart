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
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']) ??
          Status.unknown,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']) ??
          Gender.unknown,
    );

const _$StatusEnumMap = {
  Status.alive: 'Alive',
  Status.dead: 'Dead',
  Status.unknown: 'unknown',
};

const _$GenderEnumMap = {
  Gender.female: 'Female',
  Gender.male: 'Male',
  Gender.genderless: 'Genderless',
  Gender.unknown: 'unknown',
};
