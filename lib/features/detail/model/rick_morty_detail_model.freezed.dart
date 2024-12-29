// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rick_morty_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RickMortyDetailResult _$RickMortyDetailResultFromJson(
    Map<String, dynamic> json) {
  return _RickMortyDetailResult.fromJson(json);
}

/// @nodoc
mixin _$RickMortyDetailResult {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DetailStatus get status => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  DetailGender get gender => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  RickMortyOriginResult get origin => throw _privateConstructorUsedError;
  RickMortyLocationResult get location => throw _privateConstructorUsedError;

  /// Create a copy of RickMortyDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RickMortyDetailResultCopyWith<RickMortyDetailResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RickMortyDetailResultCopyWith<$Res> {
  factory $RickMortyDetailResultCopyWith(RickMortyDetailResult value,
          $Res Function(RickMortyDetailResult) then) =
      _$RickMortyDetailResultCopyWithImpl<$Res, RickMortyDetailResult>;
  @useResult
  $Res call(
      {String id,
      String name,
      DetailStatus status,
      String species,
      String type,
      DetailGender gender,
      String image,
      DateTime created,
      RickMortyOriginResult origin,
      RickMortyLocationResult location});

  $RickMortyOriginResultCopyWith<$Res> get origin;
  $RickMortyLocationResultCopyWith<$Res> get location;
}

/// @nodoc
class _$RickMortyDetailResultCopyWithImpl<$Res,
        $Val extends RickMortyDetailResult>
    implements $RickMortyDetailResultCopyWith<$Res> {
  _$RickMortyDetailResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RickMortyDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? image = null,
    Object? created = null,
    Object? origin = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailStatus,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as DetailGender,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as RickMortyOriginResult,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as RickMortyLocationResult,
    ) as $Val);
  }

  /// Create a copy of RickMortyDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RickMortyOriginResultCopyWith<$Res> get origin {
    return $RickMortyOriginResultCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  /// Create a copy of RickMortyDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RickMortyLocationResultCopyWith<$Res> get location {
    return $RickMortyLocationResultCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RickMortyDetailResultImplCopyWith<$Res>
    implements $RickMortyDetailResultCopyWith<$Res> {
  factory _$$RickMortyDetailResultImplCopyWith(
          _$RickMortyDetailResultImpl value,
          $Res Function(_$RickMortyDetailResultImpl) then) =
      __$$RickMortyDetailResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      DetailStatus status,
      String species,
      String type,
      DetailGender gender,
      String image,
      DateTime created,
      RickMortyOriginResult origin,
      RickMortyLocationResult location});

  @override
  $RickMortyOriginResultCopyWith<$Res> get origin;
  @override
  $RickMortyLocationResultCopyWith<$Res> get location;
}

/// @nodoc
class __$$RickMortyDetailResultImplCopyWithImpl<$Res>
    extends _$RickMortyDetailResultCopyWithImpl<$Res,
        _$RickMortyDetailResultImpl>
    implements _$$RickMortyDetailResultImplCopyWith<$Res> {
  __$$RickMortyDetailResultImplCopyWithImpl(_$RickMortyDetailResultImpl _value,
      $Res Function(_$RickMortyDetailResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of RickMortyDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? image = null,
    Object? created = null,
    Object? origin = null,
    Object? location = null,
  }) {
    return _then(_$RickMortyDetailResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailStatus,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as DetailGender,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as RickMortyOriginResult,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as RickMortyLocationResult,
    ));
  }
}

/// @nodoc

@JsonSerializable(createToJson: false)
class _$RickMortyDetailResultImpl implements _RickMortyDetailResult {
  _$RickMortyDetailResultImpl(
      {required this.id,
      required this.name,
      this.status = DetailStatus.unknown,
      required this.species,
      this.type = '',
      this.gender = DetailGender.unknown,
      required this.image,
      required this.created,
      required this.origin,
      required this.location});

  factory _$RickMortyDetailResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$RickMortyDetailResultImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final DetailStatus status;
  @override
  final String species;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final DetailGender gender;
  @override
  final String image;
  @override
  final DateTime created;
  @override
  final RickMortyOriginResult origin;
  @override
  final RickMortyLocationResult location;

  @override
  String toString() {
    return 'RickMortyDetailResult(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, image: $image, created: $created, origin: $origin, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RickMortyDetailResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, status, species, type,
      gender, image, created, origin, location);

  /// Create a copy of RickMortyDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RickMortyDetailResultImplCopyWith<_$RickMortyDetailResultImpl>
      get copyWith => __$$RickMortyDetailResultImplCopyWithImpl<
          _$RickMortyDetailResultImpl>(this, _$identity);
}

abstract class _RickMortyDetailResult implements RickMortyDetailResult {
  factory _RickMortyDetailResult(
          {required final String id,
          required final String name,
          final DetailStatus status,
          required final String species,
          final String type,
          final DetailGender gender,
          required final String image,
          required final DateTime created,
          required final RickMortyOriginResult origin,
          required final RickMortyLocationResult location}) =
      _$RickMortyDetailResultImpl;

  factory _RickMortyDetailResult.fromJson(Map<String, dynamic> json) =
      _$RickMortyDetailResultImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  DetailStatus get status;
  @override
  String get species;
  @override
  String get type;
  @override
  DetailGender get gender;
  @override
  String get image;
  @override
  DateTime get created;
  @override
  RickMortyOriginResult get origin;
  @override
  RickMortyLocationResult get location;

  /// Create a copy of RickMortyDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RickMortyDetailResultImplCopyWith<_$RickMortyDetailResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RickMortyOriginResult _$RickMortyOriginResultFromJson(
    Map<String, dynamic> json) {
  return _RickMortyOriginResult.fromJson(json);
}

/// @nodoc
mixin _$RickMortyOriginResult {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Create a copy of RickMortyOriginResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RickMortyOriginResultCopyWith<RickMortyOriginResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RickMortyOriginResultCopyWith<$Res> {
  factory $RickMortyOriginResultCopyWith(RickMortyOriginResult value,
          $Res Function(RickMortyOriginResult) then) =
      _$RickMortyOriginResultCopyWithImpl<$Res, RickMortyOriginResult>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$RickMortyOriginResultCopyWithImpl<$Res,
        $Val extends RickMortyOriginResult>
    implements $RickMortyOriginResultCopyWith<$Res> {
  _$RickMortyOriginResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RickMortyOriginResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RickMortyOriginResultImplCopyWith<$Res>
    implements $RickMortyOriginResultCopyWith<$Res> {
  factory _$$RickMortyOriginResultImplCopyWith(
          _$RickMortyOriginResultImpl value,
          $Res Function(_$RickMortyOriginResultImpl) then) =
      __$$RickMortyOriginResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$RickMortyOriginResultImplCopyWithImpl<$Res>
    extends _$RickMortyOriginResultCopyWithImpl<$Res,
        _$RickMortyOriginResultImpl>
    implements _$$RickMortyOriginResultImplCopyWith<$Res> {
  __$$RickMortyOriginResultImplCopyWithImpl(_$RickMortyOriginResultImpl _value,
      $Res Function(_$RickMortyOriginResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of RickMortyOriginResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$RickMortyOriginResultImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(createToJson: false)
class _$RickMortyOriginResultImpl implements _RickMortyOriginResult {
  _$RickMortyOriginResultImpl({this.id, this.name});

  factory _$RickMortyOriginResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$RickMortyOriginResultImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'RickMortyOriginResult(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RickMortyOriginResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of RickMortyOriginResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RickMortyOriginResultImplCopyWith<_$RickMortyOriginResultImpl>
      get copyWith => __$$RickMortyOriginResultImplCopyWithImpl<
          _$RickMortyOriginResultImpl>(this, _$identity);
}

abstract class _RickMortyOriginResult implements RickMortyOriginResult {
  factory _RickMortyOriginResult({final String? id, final String? name}) =
      _$RickMortyOriginResultImpl;

  factory _RickMortyOriginResult.fromJson(Map<String, dynamic> json) =
      _$RickMortyOriginResultImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;

  /// Create a copy of RickMortyOriginResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RickMortyOriginResultImplCopyWith<_$RickMortyOriginResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RickMortyLocationResult _$RickMortyLocationResultFromJson(
    Map<String, dynamic> json) {
  return _RickMortyLocationResult.fromJson(json);
}

/// @nodoc
mixin _$RickMortyLocationResult {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Create a copy of RickMortyLocationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RickMortyLocationResultCopyWith<RickMortyLocationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RickMortyLocationResultCopyWith<$Res> {
  factory $RickMortyLocationResultCopyWith(RickMortyLocationResult value,
          $Res Function(RickMortyLocationResult) then) =
      _$RickMortyLocationResultCopyWithImpl<$Res, RickMortyLocationResult>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$RickMortyLocationResultCopyWithImpl<$Res,
        $Val extends RickMortyLocationResult>
    implements $RickMortyLocationResultCopyWith<$Res> {
  _$RickMortyLocationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RickMortyLocationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RickMortyLocationResultImplCopyWith<$Res>
    implements $RickMortyLocationResultCopyWith<$Res> {
  factory _$$RickMortyLocationResultImplCopyWith(
          _$RickMortyLocationResultImpl value,
          $Res Function(_$RickMortyLocationResultImpl) then) =
      __$$RickMortyLocationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$RickMortyLocationResultImplCopyWithImpl<$Res>
    extends _$RickMortyLocationResultCopyWithImpl<$Res,
        _$RickMortyLocationResultImpl>
    implements _$$RickMortyLocationResultImplCopyWith<$Res> {
  __$$RickMortyLocationResultImplCopyWithImpl(
      _$RickMortyLocationResultImpl _value,
      $Res Function(_$RickMortyLocationResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of RickMortyLocationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$RickMortyLocationResultImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(createToJson: false)
class _$RickMortyLocationResultImpl implements _RickMortyLocationResult {
  _$RickMortyLocationResultImpl({this.id, this.name});

  factory _$RickMortyLocationResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$RickMortyLocationResultImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'RickMortyLocationResult(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RickMortyLocationResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of RickMortyLocationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RickMortyLocationResultImplCopyWith<_$RickMortyLocationResultImpl>
      get copyWith => __$$RickMortyLocationResultImplCopyWithImpl<
          _$RickMortyLocationResultImpl>(this, _$identity);
}

abstract class _RickMortyLocationResult implements RickMortyLocationResult {
  factory _RickMortyLocationResult({final String? id, final String? name}) =
      _$RickMortyLocationResultImpl;

  factory _RickMortyLocationResult.fromJson(Map<String, dynamic> json) =
      _$RickMortyLocationResultImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;

  /// Create a copy of RickMortyLocationResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RickMortyLocationResultImplCopyWith<_$RickMortyLocationResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
