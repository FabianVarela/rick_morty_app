// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rick_morty_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RickMortyListDataImpl _$$RickMortyListDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RickMortyListDataImpl(
      info: RickMortyListInfo.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => RickMortyListResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$RickMortyListInfoImpl _$$RickMortyListInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$RickMortyListInfoImpl(
      count: (json['count'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
    );

_$RickMortyListResultImpl _$$RickMortyListResultImplFromJson(
        Map<String, dynamic> json) =>
    _$RickMortyListResultImpl(
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
