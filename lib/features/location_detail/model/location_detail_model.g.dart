// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RickMortyLocationDetailResult _$RickMortyLocationDetailResultFromJson(
  Map<String, dynamic> json,
) => _RickMortyLocationDetailResult(
  id: json['id'] as String,
  name: json['name'] as String,
  type: json['type'] as String,
  dimension: json['dimension'] as String,
  residents:
      (json['residents'] as List<dynamic>?)
          ?.map(
            (e) => RickMortyLocationDetailResident.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const [],
);

_RickMortyLocationDetailResident _$RickMortyLocationDetailResidentFromJson(
  Map<String, dynamic> json,
) => _RickMortyLocationDetailResident(
  id: json['id'] as String,
  name: json['name'] as String,
  status: json['status'] as String,
  image: json['image'] as String,
);
