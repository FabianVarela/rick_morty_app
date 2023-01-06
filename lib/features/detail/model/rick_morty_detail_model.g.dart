// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rick_morty_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RickMortyDetailResult _$$_RickMortyDetailResultFromJson(
        Map<String, dynamic> json) =>
    _$_RickMortyDetailResult(
      id: json['id'] as String,
      name: json['name'] as String,
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']) ??
          Status.unknown,
      species: json['species'] as String,
      type: json['type'] as String? ?? '',
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']) ??
          Gender.unknown,
      image: json['image'] as String,
      created: DateTime.parse(json['created'] as String),
      origin: RickMortyOriginResult.fromJson(
          json['origin'] as Map<String, dynamic>),
      location: RickMortyLocationResult.fromJson(
          json['location'] as Map<String, dynamic>),
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

_$_RickMortyOriginResult _$$_RickMortyOriginResultFromJson(
        Map<String, dynamic> json) =>
    _$_RickMortyOriginResult(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

_$_RickMortyLocationResult _$$_RickMortyLocationResultFromJson(
        Map<String, dynamic> json) =>
    _$_RickMortyLocationResult(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );
