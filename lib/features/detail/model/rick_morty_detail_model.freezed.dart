// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rick_morty_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RickMortyDetailResult {

 String get id; String get name; DetailStatus get status; String get species; String get type; DetailGender get gender; String get image; DateTime get created; RickMortyOriginResult get origin; RickMortyLocationResult get location; List<RickMortyEpisodeResult> get episode;
/// Create a copy of RickMortyDetailResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyDetailResultCopyWith<RickMortyDetailResult> get copyWith => _$RickMortyDetailResultCopyWithImpl<RickMortyDetailResult>(this as RickMortyDetailResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyDetailResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.species, species) || other.species == species)&&(identical(other.type, type) || other.type == type)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.image, image) || other.image == image)&&(identical(other.created, created) || other.created == created)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other.episode, episode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,species,type,gender,image,created,origin,location,const DeepCollectionEquality().hash(episode));

@override
String toString() {
  return 'RickMortyDetailResult(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, image: $image, created: $created, origin: $origin, location: $location, episode: $episode)';
}


}

/// @nodoc
abstract mixin class $RickMortyDetailResultCopyWith<$Res>  {
  factory $RickMortyDetailResultCopyWith(RickMortyDetailResult value, $Res Function(RickMortyDetailResult) _then) = _$RickMortyDetailResultCopyWithImpl;
@useResult
$Res call({
 String id, String name, DetailStatus status, String species, String type, DetailGender gender, String image, DateTime created, RickMortyOriginResult origin, RickMortyLocationResult location, List<RickMortyEpisodeResult> episode
});


$RickMortyOriginResultCopyWith<$Res> get origin;$RickMortyLocationResultCopyWith<$Res> get location;

}
/// @nodoc
class _$RickMortyDetailResultCopyWithImpl<$Res>
    implements $RickMortyDetailResultCopyWith<$Res> {
  _$RickMortyDetailResultCopyWithImpl(this._self, this._then);

  final RickMortyDetailResult _self;
  final $Res Function(RickMortyDetailResult) _then;

/// Create a copy of RickMortyDetailResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? species = null,Object? type = null,Object? gender = null,Object? image = null,Object? created = null,Object? origin = null,Object? location = null,Object? episode = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DetailStatus,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as DetailGender,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as RickMortyOriginResult,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as RickMortyLocationResult,episode: null == episode ? _self.episode : episode // ignore: cast_nullable_to_non_nullable
as List<RickMortyEpisodeResult>,
  ));
}
/// Create a copy of RickMortyDetailResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RickMortyOriginResultCopyWith<$Res> get origin {
  
  return $RickMortyOriginResultCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}/// Create a copy of RickMortyDetailResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RickMortyLocationResultCopyWith<$Res> get location {
  
  return $RickMortyLocationResultCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// Adds pattern-matching-related methods to [RickMortyDetailResult].
extension RickMortyDetailResultPatterns on RickMortyDetailResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RickMortyDetailResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RickMortyDetailResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RickMortyDetailResult value)  $default,){
final _that = this;
switch (_that) {
case _RickMortyDetailResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RickMortyDetailResult value)?  $default,){
final _that = this;
switch (_that) {
case _RickMortyDetailResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  DetailStatus status,  String species,  String type,  DetailGender gender,  String image,  DateTime created,  RickMortyOriginResult origin,  RickMortyLocationResult location,  List<RickMortyEpisodeResult> episode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RickMortyDetailResult() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.species,_that.type,_that.gender,_that.image,_that.created,_that.origin,_that.location,_that.episode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  DetailStatus status,  String species,  String type,  DetailGender gender,  String image,  DateTime created,  RickMortyOriginResult origin,  RickMortyLocationResult location,  List<RickMortyEpisodeResult> episode)  $default,) {final _that = this;
switch (_that) {
case _RickMortyDetailResult():
return $default(_that.id,_that.name,_that.status,_that.species,_that.type,_that.gender,_that.image,_that.created,_that.origin,_that.location,_that.episode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  DetailStatus status,  String species,  String type,  DetailGender gender,  String image,  DateTime created,  RickMortyOriginResult origin,  RickMortyLocationResult location,  List<RickMortyEpisodeResult> episode)?  $default,) {final _that = this;
switch (_that) {
case _RickMortyDetailResult() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.species,_that.type,_that.gender,_that.image,_that.created,_that.origin,_that.location,_that.episode);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: false)
class _RickMortyDetailResult implements RickMortyDetailResult {
   _RickMortyDetailResult({required this.id, required this.name, this.status = DetailStatus.unknown, required this.species, this.type = '', this.gender = DetailGender.unknown, required this.image, required this.created, required this.origin, required this.location, final  List<RickMortyEpisodeResult> episode = const []}): _episode = episode;
  factory _RickMortyDetailResult.fromJson(Map<String, dynamic> json) => _$RickMortyDetailResultFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  DetailStatus status;
@override final  String species;
@override@JsonKey() final  String type;
@override@JsonKey() final  DetailGender gender;
@override final  String image;
@override final  DateTime created;
@override final  RickMortyOriginResult origin;
@override final  RickMortyLocationResult location;
 final  List<RickMortyEpisodeResult> _episode;
@override@JsonKey() List<RickMortyEpisodeResult> get episode {
  if (_episode is EqualUnmodifiableListView) return _episode;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_episode);
}


/// Create a copy of RickMortyDetailResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyDetailResultCopyWith<_RickMortyDetailResult> get copyWith => __$RickMortyDetailResultCopyWithImpl<_RickMortyDetailResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyDetailResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.species, species) || other.species == species)&&(identical(other.type, type) || other.type == type)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.image, image) || other.image == image)&&(identical(other.created, created) || other.created == created)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._episode, _episode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,species,type,gender,image,created,origin,location,const DeepCollectionEquality().hash(_episode));

@override
String toString() {
  return 'RickMortyDetailResult(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, image: $image, created: $created, origin: $origin, location: $location, episode: $episode)';
}


}

/// @nodoc
abstract mixin class _$RickMortyDetailResultCopyWith<$Res> implements $RickMortyDetailResultCopyWith<$Res> {
  factory _$RickMortyDetailResultCopyWith(_RickMortyDetailResult value, $Res Function(_RickMortyDetailResult) _then) = __$RickMortyDetailResultCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, DetailStatus status, String species, String type, DetailGender gender, String image, DateTime created, RickMortyOriginResult origin, RickMortyLocationResult location, List<RickMortyEpisodeResult> episode
});


@override $RickMortyOriginResultCopyWith<$Res> get origin;@override $RickMortyLocationResultCopyWith<$Res> get location;

}
/// @nodoc
class __$RickMortyDetailResultCopyWithImpl<$Res>
    implements _$RickMortyDetailResultCopyWith<$Res> {
  __$RickMortyDetailResultCopyWithImpl(this._self, this._then);

  final _RickMortyDetailResult _self;
  final $Res Function(_RickMortyDetailResult) _then;

/// Create a copy of RickMortyDetailResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? species = null,Object? type = null,Object? gender = null,Object? image = null,Object? created = null,Object? origin = null,Object? location = null,Object? episode = null,}) {
  return _then(_RickMortyDetailResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DetailStatus,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as DetailGender,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as RickMortyOriginResult,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as RickMortyLocationResult,episode: null == episode ? _self._episode : episode // ignore: cast_nullable_to_non_nullable
as List<RickMortyEpisodeResult>,
  ));
}

/// Create a copy of RickMortyDetailResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RickMortyOriginResultCopyWith<$Res> get origin {
  
  return $RickMortyOriginResultCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}/// Create a copy of RickMortyDetailResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RickMortyLocationResultCopyWith<$Res> get location {
  
  return $RickMortyLocationResultCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// @nodoc
mixin _$RickMortyOriginResult {

 String? get id; String? get name;
/// Create a copy of RickMortyOriginResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyOriginResultCopyWith<RickMortyOriginResult> get copyWith => _$RickMortyOriginResultCopyWithImpl<RickMortyOriginResult>(this as RickMortyOriginResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyOriginResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'RickMortyOriginResult(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $RickMortyOriginResultCopyWith<$Res>  {
  factory $RickMortyOriginResultCopyWith(RickMortyOriginResult value, $Res Function(RickMortyOriginResult) _then) = _$RickMortyOriginResultCopyWithImpl;
@useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class _$RickMortyOriginResultCopyWithImpl<$Res>
    implements $RickMortyOriginResultCopyWith<$Res> {
  _$RickMortyOriginResultCopyWithImpl(this._self, this._then);

  final RickMortyOriginResult _self;
  final $Res Function(RickMortyOriginResult) _then;

/// Create a copy of RickMortyOriginResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RickMortyOriginResult].
extension RickMortyOriginResultPatterns on RickMortyOriginResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RickMortyOriginResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RickMortyOriginResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RickMortyOriginResult value)  $default,){
final _that = this;
switch (_that) {
case _RickMortyOriginResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RickMortyOriginResult value)?  $default,){
final _that = this;
switch (_that) {
case _RickMortyOriginResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RickMortyOriginResult() when $default != null:
return $default(_that.id,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _RickMortyOriginResult():
return $default(_that.id,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _RickMortyOriginResult() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: false)
class _RickMortyOriginResult implements RickMortyOriginResult {
   _RickMortyOriginResult({this.id, this.name});
  factory _RickMortyOriginResult.fromJson(Map<String, dynamic> json) => _$RickMortyOriginResultFromJson(json);

@override final  String? id;
@override final  String? name;

/// Create a copy of RickMortyOriginResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyOriginResultCopyWith<_RickMortyOriginResult> get copyWith => __$RickMortyOriginResultCopyWithImpl<_RickMortyOriginResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyOriginResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'RickMortyOriginResult(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$RickMortyOriginResultCopyWith<$Res> implements $RickMortyOriginResultCopyWith<$Res> {
  factory _$RickMortyOriginResultCopyWith(_RickMortyOriginResult value, $Res Function(_RickMortyOriginResult) _then) = __$RickMortyOriginResultCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class __$RickMortyOriginResultCopyWithImpl<$Res>
    implements _$RickMortyOriginResultCopyWith<$Res> {
  __$RickMortyOriginResultCopyWithImpl(this._self, this._then);

  final _RickMortyOriginResult _self;
  final $Res Function(_RickMortyOriginResult) _then;

/// Create a copy of RickMortyOriginResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_RickMortyOriginResult(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RickMortyLocationResult {

 String? get id; String? get name;
/// Create a copy of RickMortyLocationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyLocationResultCopyWith<RickMortyLocationResult> get copyWith => _$RickMortyLocationResultCopyWithImpl<RickMortyLocationResult>(this as RickMortyLocationResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyLocationResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'RickMortyLocationResult(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $RickMortyLocationResultCopyWith<$Res>  {
  factory $RickMortyLocationResultCopyWith(RickMortyLocationResult value, $Res Function(RickMortyLocationResult) _then) = _$RickMortyLocationResultCopyWithImpl;
@useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class _$RickMortyLocationResultCopyWithImpl<$Res>
    implements $RickMortyLocationResultCopyWith<$Res> {
  _$RickMortyLocationResultCopyWithImpl(this._self, this._then);

  final RickMortyLocationResult _self;
  final $Res Function(RickMortyLocationResult) _then;

/// Create a copy of RickMortyLocationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RickMortyLocationResult].
extension RickMortyLocationResultPatterns on RickMortyLocationResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RickMortyLocationResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RickMortyLocationResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RickMortyLocationResult value)  $default,){
final _that = this;
switch (_that) {
case _RickMortyLocationResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RickMortyLocationResult value)?  $default,){
final _that = this;
switch (_that) {
case _RickMortyLocationResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RickMortyLocationResult() when $default != null:
return $default(_that.id,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _RickMortyLocationResult():
return $default(_that.id,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _RickMortyLocationResult() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: false)
class _RickMortyLocationResult implements RickMortyLocationResult {
   _RickMortyLocationResult({this.id, this.name});
  factory _RickMortyLocationResult.fromJson(Map<String, dynamic> json) => _$RickMortyLocationResultFromJson(json);

@override final  String? id;
@override final  String? name;

/// Create a copy of RickMortyLocationResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyLocationResultCopyWith<_RickMortyLocationResult> get copyWith => __$RickMortyLocationResultCopyWithImpl<_RickMortyLocationResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyLocationResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'RickMortyLocationResult(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$RickMortyLocationResultCopyWith<$Res> implements $RickMortyLocationResultCopyWith<$Res> {
  factory _$RickMortyLocationResultCopyWith(_RickMortyLocationResult value, $Res Function(_RickMortyLocationResult) _then) = __$RickMortyLocationResultCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class __$RickMortyLocationResultCopyWithImpl<$Res>
    implements _$RickMortyLocationResultCopyWith<$Res> {
  __$RickMortyLocationResultCopyWithImpl(this._self, this._then);

  final _RickMortyLocationResult _self;
  final $Res Function(_RickMortyLocationResult) _then;

/// Create a copy of RickMortyLocationResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_RickMortyLocationResult(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RickMortyEpisodeResult {

 String get id; String get name; String get airDate; String get episode;
/// Create a copy of RickMortyEpisodeResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyEpisodeResultCopyWith<RickMortyEpisodeResult> get copyWith => _$RickMortyEpisodeResultCopyWithImpl<RickMortyEpisodeResult>(this as RickMortyEpisodeResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyEpisodeResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.airDate, airDate) || other.airDate == airDate)&&(identical(other.episode, episode) || other.episode == episode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,airDate,episode);

@override
String toString() {
  return 'RickMortyEpisodeResult(id: $id, name: $name, airDate: $airDate, episode: $episode)';
}


}

/// @nodoc
abstract mixin class $RickMortyEpisodeResultCopyWith<$Res>  {
  factory $RickMortyEpisodeResultCopyWith(RickMortyEpisodeResult value, $Res Function(RickMortyEpisodeResult) _then) = _$RickMortyEpisodeResultCopyWithImpl;
@useResult
$Res call({
 String id, String name, String airDate, String episode
});




}
/// @nodoc
class _$RickMortyEpisodeResultCopyWithImpl<$Res>
    implements $RickMortyEpisodeResultCopyWith<$Res> {
  _$RickMortyEpisodeResultCopyWithImpl(this._self, this._then);

  final RickMortyEpisodeResult _self;
  final $Res Function(RickMortyEpisodeResult) _then;

/// Create a copy of RickMortyEpisodeResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? airDate = null,Object? episode = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,airDate: null == airDate ? _self.airDate : airDate // ignore: cast_nullable_to_non_nullable
as String,episode: null == episode ? _self.episode : episode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RickMortyEpisodeResult].
extension RickMortyEpisodeResultPatterns on RickMortyEpisodeResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RickMortyEpisodeResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RickMortyEpisodeResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RickMortyEpisodeResult value)  $default,){
final _that = this;
switch (_that) {
case _RickMortyEpisodeResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RickMortyEpisodeResult value)?  $default,){
final _that = this;
switch (_that) {
case _RickMortyEpisodeResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String airDate,  String episode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RickMortyEpisodeResult() when $default != null:
return $default(_that.id,_that.name,_that.airDate,_that.episode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String airDate,  String episode)  $default,) {final _that = this;
switch (_that) {
case _RickMortyEpisodeResult():
return $default(_that.id,_that.name,_that.airDate,_that.episode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String airDate,  String episode)?  $default,) {final _that = this;
switch (_that) {
case _RickMortyEpisodeResult() when $default != null:
return $default(_that.id,_that.name,_that.airDate,_that.episode);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class _RickMortyEpisodeResult implements RickMortyEpisodeResult {
   _RickMortyEpisodeResult({required this.id, required this.name, required this.airDate, required this.episode});
  factory _RickMortyEpisodeResult.fromJson(Map<String, dynamic> json) => _$RickMortyEpisodeResultFromJson(json);

@override final  String id;
@override final  String name;
@override final  String airDate;
@override final  String episode;

/// Create a copy of RickMortyEpisodeResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyEpisodeResultCopyWith<_RickMortyEpisodeResult> get copyWith => __$RickMortyEpisodeResultCopyWithImpl<_RickMortyEpisodeResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyEpisodeResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.airDate, airDate) || other.airDate == airDate)&&(identical(other.episode, episode) || other.episode == episode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,airDate,episode);

@override
String toString() {
  return 'RickMortyEpisodeResult(id: $id, name: $name, airDate: $airDate, episode: $episode)';
}


}

/// @nodoc
abstract mixin class _$RickMortyEpisodeResultCopyWith<$Res> implements $RickMortyEpisodeResultCopyWith<$Res> {
  factory _$RickMortyEpisodeResultCopyWith(_RickMortyEpisodeResult value, $Res Function(_RickMortyEpisodeResult) _then) = __$RickMortyEpisodeResultCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String airDate, String episode
});




}
/// @nodoc
class __$RickMortyEpisodeResultCopyWithImpl<$Res>
    implements _$RickMortyEpisodeResultCopyWith<$Res> {
  __$RickMortyEpisodeResultCopyWithImpl(this._self, this._then);

  final _RickMortyEpisodeResult _self;
  final $Res Function(_RickMortyEpisodeResult) _then;

/// Create a copy of RickMortyEpisodeResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? airDate = null,Object? episode = null,}) {
  return _then(_RickMortyEpisodeResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,airDate: null == airDate ? _self.airDate : airDate // ignore: cast_nullable_to_non_nullable
as String,episode: null == episode ? _self.episode : episode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
