// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rick_morty_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RickMortyDetailResultImpl _$$RickMortyDetailResultImplFromJson(
        Map<String, dynamic> json) =>
    _$RickMortyDetailResultImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      status: $enumDecodeNullable(_$DetailStatusEnumMap, json['status']) ??
          DetailStatus.unknown,
      species: json['species'] as String,
      type: json['type'] as String? ?? '',
      gender: $enumDecodeNullable(_$DetailGenderEnumMap, json['gender']) ??
          DetailGender.unknown,
      image: json['image'] as String,
      created: DateTime.parse(json['created'] as String),
      origin: RickMortyOriginResult.fromJson(
          json['origin'] as Map<String, dynamic>),
      location: RickMortyLocationResult.fromJson(
          json['location'] as Map<String, dynamic>),
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

_$RickMortyOriginResultImpl _$$RickMortyOriginResultImplFromJson(
        Map<String, dynamic> json) =>
    _$RickMortyOriginResultImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

_$RickMortyLocationResultImpl _$$RickMortyLocationResultImplFromJson(
        Map<String, dynamic> json) =>
    _$RickMortyLocationResultImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );
