// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RickMortyLocationListData _$RickMortyLocationListDataFromJson(
  Map<String, dynamic> json,
) => _RickMortyLocationListData(
  info: RickMortyLocationListInfo.fromJson(
    json['info'] as Map<String, dynamic>,
  ),
  results: (json['results'] as List<dynamic>)
      .map(
        (e) => RickMortyLocationListResult.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

_RickMortyLocationListInfo _$RickMortyLocationListInfoFromJson(
  Map<String, dynamic> json,
) => _RickMortyLocationListInfo(
  count: (json['count'] as num).toInt(),
  pages: (json['pages'] as num).toInt(),
);

_RickMortyLocationListResult _$RickMortyLocationListResultFromJson(
  Map<String, dynamic> json,
) => _RickMortyLocationListResult(
  id: json['id'] as String,
  name: json['name'] as String,
  type: json['type'] as String,
  dimension: json['dimension'] as String,
);
