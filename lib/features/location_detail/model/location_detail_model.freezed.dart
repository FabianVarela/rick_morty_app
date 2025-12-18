// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RickMortyLocationDetailResult {

 String get id; String get name; String get type; String get dimension; List<RickMortyLocationDetailResident> get residents;
/// Create a copy of RickMortyLocationDetailResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyLocationDetailResultCopyWith<RickMortyLocationDetailResult> get copyWith => _$RickMortyLocationDetailResultCopyWithImpl<RickMortyLocationDetailResult>(this as RickMortyLocationDetailResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyLocationDetailResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.dimension, dimension) || other.dimension == dimension)&&const DeepCollectionEquality().equals(other.residents, residents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,dimension,const DeepCollectionEquality().hash(residents));

@override
String toString() {
  return 'RickMortyLocationDetailResult(id: $id, name: $name, type: $type, dimension: $dimension, residents: $residents)';
}


}

/// @nodoc
abstract mixin class $RickMortyLocationDetailResultCopyWith<$Res>  {
  factory $RickMortyLocationDetailResultCopyWith(RickMortyLocationDetailResult value, $Res Function(RickMortyLocationDetailResult) _then) = _$RickMortyLocationDetailResultCopyWithImpl;
@useResult
$Res call({
 String id, String name, String type, String dimension, List<RickMortyLocationDetailResident> residents
});




}
/// @nodoc
class _$RickMortyLocationDetailResultCopyWithImpl<$Res>
    implements $RickMortyLocationDetailResultCopyWith<$Res> {
  _$RickMortyLocationDetailResultCopyWithImpl(this._self, this._then);

  final RickMortyLocationDetailResult _self;
  final $Res Function(RickMortyLocationDetailResult) _then;

/// Create a copy of RickMortyLocationDetailResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? dimension = null,Object? residents = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as String,residents: null == residents ? _self.residents : residents // ignore: cast_nullable_to_non_nullable
as List<RickMortyLocationDetailResident>,
  ));
}

}


/// Adds pattern-matching-related methods to [RickMortyLocationDetailResult].
extension RickMortyLocationDetailResultPatterns on RickMortyLocationDetailResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RickMortyLocationDetailResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RickMortyLocationDetailResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RickMortyLocationDetailResult value)  $default,){
final _that = this;
switch (_that) {
case _RickMortyLocationDetailResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RickMortyLocationDetailResult value)?  $default,){
final _that = this;
switch (_that) {
case _RickMortyLocationDetailResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String type,  String dimension,  List<RickMortyLocationDetailResident> residents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RickMortyLocationDetailResult() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.dimension,_that.residents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String type,  String dimension,  List<RickMortyLocationDetailResident> residents)  $default,) {final _that = this;
switch (_that) {
case _RickMortyLocationDetailResult():
return $default(_that.id,_that.name,_that.type,_that.dimension,_that.residents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String type,  String dimension,  List<RickMortyLocationDetailResident> residents)?  $default,) {final _that = this;
switch (_that) {
case _RickMortyLocationDetailResult() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.dimension,_that.residents);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: false)
class _RickMortyLocationDetailResult implements RickMortyLocationDetailResult {
   _RickMortyLocationDetailResult({required this.id, required this.name, required this.type, required this.dimension, final  List<RickMortyLocationDetailResident> residents = const []}): _residents = residents;
  factory _RickMortyLocationDetailResult.fromJson(Map<String, dynamic> json) => _$RickMortyLocationDetailResultFromJson(json);

@override final  String id;
@override final  String name;
@override final  String type;
@override final  String dimension;
 final  List<RickMortyLocationDetailResident> _residents;
@override@JsonKey() List<RickMortyLocationDetailResident> get residents {
  if (_residents is EqualUnmodifiableListView) return _residents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_residents);
}


/// Create a copy of RickMortyLocationDetailResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyLocationDetailResultCopyWith<_RickMortyLocationDetailResult> get copyWith => __$RickMortyLocationDetailResultCopyWithImpl<_RickMortyLocationDetailResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyLocationDetailResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.dimension, dimension) || other.dimension == dimension)&&const DeepCollectionEquality().equals(other._residents, _residents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,dimension,const DeepCollectionEquality().hash(_residents));

@override
String toString() {
  return 'RickMortyLocationDetailResult(id: $id, name: $name, type: $type, dimension: $dimension, residents: $residents)';
}


}

/// @nodoc
abstract mixin class _$RickMortyLocationDetailResultCopyWith<$Res> implements $RickMortyLocationDetailResultCopyWith<$Res> {
  factory _$RickMortyLocationDetailResultCopyWith(_RickMortyLocationDetailResult value, $Res Function(_RickMortyLocationDetailResult) _then) = __$RickMortyLocationDetailResultCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String type, String dimension, List<RickMortyLocationDetailResident> residents
});




}
/// @nodoc
class __$RickMortyLocationDetailResultCopyWithImpl<$Res>
    implements _$RickMortyLocationDetailResultCopyWith<$Res> {
  __$RickMortyLocationDetailResultCopyWithImpl(this._self, this._then);

  final _RickMortyLocationDetailResult _self;
  final $Res Function(_RickMortyLocationDetailResult) _then;

/// Create a copy of RickMortyLocationDetailResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? dimension = null,Object? residents = null,}) {
  return _then(_RickMortyLocationDetailResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as String,residents: null == residents ? _self._residents : residents // ignore: cast_nullable_to_non_nullable
as List<RickMortyLocationDetailResident>,
  ));
}


}


/// @nodoc
mixin _$RickMortyLocationDetailResident {

 String get id; String get name; String get status; String get image;
/// Create a copy of RickMortyLocationDetailResident
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyLocationDetailResidentCopyWith<RickMortyLocationDetailResident> get copyWith => _$RickMortyLocationDetailResidentCopyWithImpl<RickMortyLocationDetailResident>(this as RickMortyLocationDetailResident, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyLocationDetailResident&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,image);

@override
String toString() {
  return 'RickMortyLocationDetailResident(id: $id, name: $name, status: $status, image: $image)';
}


}

/// @nodoc
abstract mixin class $RickMortyLocationDetailResidentCopyWith<$Res>  {
  factory $RickMortyLocationDetailResidentCopyWith(RickMortyLocationDetailResident value, $Res Function(RickMortyLocationDetailResident) _then) = _$RickMortyLocationDetailResidentCopyWithImpl;
@useResult
$Res call({
 String id, String name, String status, String image
});




}
/// @nodoc
class _$RickMortyLocationDetailResidentCopyWithImpl<$Res>
    implements $RickMortyLocationDetailResidentCopyWith<$Res> {
  _$RickMortyLocationDetailResidentCopyWithImpl(this._self, this._then);

  final RickMortyLocationDetailResident _self;
  final $Res Function(RickMortyLocationDetailResident) _then;

/// Create a copy of RickMortyLocationDetailResident
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RickMortyLocationDetailResident].
extension RickMortyLocationDetailResidentPatterns on RickMortyLocationDetailResident {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RickMortyLocationDetailResident value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RickMortyLocationDetailResident() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RickMortyLocationDetailResident value)  $default,){
final _that = this;
switch (_that) {
case _RickMortyLocationDetailResident():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RickMortyLocationDetailResident value)?  $default,){
final _that = this;
switch (_that) {
case _RickMortyLocationDetailResident() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String status,  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RickMortyLocationDetailResident() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String status,  String image)  $default,) {final _that = this;
switch (_that) {
case _RickMortyLocationDetailResident():
return $default(_that.id,_that.name,_that.status,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String status,  String image)?  $default,) {final _that = this;
switch (_that) {
case _RickMortyLocationDetailResident() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.image);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: false)
class _RickMortyLocationDetailResident implements RickMortyLocationDetailResident {
   _RickMortyLocationDetailResident({required this.id, required this.name, required this.status, required this.image});
  factory _RickMortyLocationDetailResident.fromJson(Map<String, dynamic> json) => _$RickMortyLocationDetailResidentFromJson(json);

@override final  String id;
@override final  String name;
@override final  String status;
@override final  String image;

/// Create a copy of RickMortyLocationDetailResident
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyLocationDetailResidentCopyWith<_RickMortyLocationDetailResident> get copyWith => __$RickMortyLocationDetailResidentCopyWithImpl<_RickMortyLocationDetailResident>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyLocationDetailResident&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,image);

@override
String toString() {
  return 'RickMortyLocationDetailResident(id: $id, name: $name, status: $status, image: $image)';
}


}

/// @nodoc
abstract mixin class _$RickMortyLocationDetailResidentCopyWith<$Res> implements $RickMortyLocationDetailResidentCopyWith<$Res> {
  factory _$RickMortyLocationDetailResidentCopyWith(_RickMortyLocationDetailResident value, $Res Function(_RickMortyLocationDetailResident) _then) = __$RickMortyLocationDetailResidentCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String status, String image
});




}
/// @nodoc
class __$RickMortyLocationDetailResidentCopyWithImpl<$Res>
    implements _$RickMortyLocationDetailResidentCopyWith<$Res> {
  __$RickMortyLocationDetailResidentCopyWithImpl(this._self, this._then);

  final _RickMortyLocationDetailResident _self;
  final $Res Function(_RickMortyLocationDetailResident) _then;

/// Create a copy of RickMortyLocationDetailResident
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? image = null,}) {
  return _then(_RickMortyLocationDetailResident(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
