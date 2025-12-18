// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RickMortyLocationListResult _$RickMortyLocationListResultFromJson(
  Map<String, dynamic> json,
) => _RickMortyLocationListResult(
  id: json['id'] as String,
  name: json['name'] as String,
  type: json['type'] as String,
  dimension: json['dimension'] as String,
);

_RickMortyLocationListData _$RickMortyLocationListDataFromJson(
  Map<String, dynamic> json,
) => _RickMortyLocationListData(
  results: (json['results'] as List<dynamic>)
      .map(
        (e) => RickMortyLocationListResult.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);
