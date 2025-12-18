// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RickMortyEpisodeDetailResult {

 String get id; String get name; String get episode; String get airDate; List<RickMortyEpisodeDetailCharacter> get characters;
/// Create a copy of RickMortyEpisodeDetailResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyEpisodeDetailResultCopyWith<RickMortyEpisodeDetailResult> get copyWith => _$RickMortyEpisodeDetailResultCopyWithImpl<RickMortyEpisodeDetailResult>(this as RickMortyEpisodeDetailResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyEpisodeDetailResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.episode, episode) || other.episode == episode)&&(identical(other.airDate, airDate) || other.airDate == airDate)&&const DeepCollectionEquality().equals(other.characters, characters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,episode,airDate,const DeepCollectionEquality().hash(characters));

@override
String toString() {
  return 'RickMortyEpisodeDetailResult(id: $id, name: $name, episode: $episode, airDate: $airDate, characters: $characters)';
}


}

/// @nodoc
abstract mixin class $RickMortyEpisodeDetailResultCopyWith<$Res>  {
  factory $RickMortyEpisodeDetailResultCopyWith(RickMortyEpisodeDetailResult value, $Res Function(RickMortyEpisodeDetailResult) _then) = _$RickMortyEpisodeDetailResultCopyWithImpl;
@useResult
$Res call({
 String id, String name, String episode, String airDate, List<RickMortyEpisodeDetailCharacter> characters
});




}
/// @nodoc
class _$RickMortyEpisodeDetailResultCopyWithImpl<$Res>
    implements $RickMortyEpisodeDetailResultCopyWith<$Res> {
  _$RickMortyEpisodeDetailResultCopyWithImpl(this._self, this._then);

  final RickMortyEpisodeDetailResult _self;
  final $Res Function(RickMortyEpisodeDetailResult) _then;

/// Create a copy of RickMortyEpisodeDetailResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? episode = null,Object? airDate = null,Object? characters = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,episode: null == episode ? _self.episode : episode // ignore: cast_nullable_to_non_nullable
as String,airDate: null == airDate ? _self.airDate : airDate // ignore: cast_nullable_to_non_nullable
as String,characters: null == characters ? _self.characters : characters // ignore: cast_nullable_to_non_nullable
as List<RickMortyEpisodeDetailCharacter>,
  ));
}

}


/// Adds pattern-matching-related methods to [RickMortyEpisodeDetailResult].
extension RickMortyEpisodeDetailResultPatterns on RickMortyEpisodeDetailResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RickMortyEpisodeDetailResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RickMortyEpisodeDetailResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RickMortyEpisodeDetailResult value)  $default,){
final _that = this;
switch (_that) {
case _RickMortyEpisodeDetailResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RickMortyEpisodeDetailResult value)?  $default,){
final _that = this;
switch (_that) {
case _RickMortyEpisodeDetailResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String episode,  String airDate,  List<RickMortyEpisodeDetailCharacter> characters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RickMortyEpisodeDetailResult() when $default != null:
return $default(_that.id,_that.name,_that.episode,_that.airDate,_that.characters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String episode,  String airDate,  List<RickMortyEpisodeDetailCharacter> characters)  $default,) {final _that = this;
switch (_that) {
case _RickMortyEpisodeDetailResult():
return $default(_that.id,_that.name,_that.episode,_that.airDate,_that.characters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String episode,  String airDate,  List<RickMortyEpisodeDetailCharacter> characters)?  $default,) {final _that = this;
switch (_that) {
case _RickMortyEpisodeDetailResult() when $default != null:
return $default(_that.id,_that.name,_that.episode,_that.airDate,_that.characters);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class _RickMortyEpisodeDetailResult implements RickMortyEpisodeDetailResult {
   _RickMortyEpisodeDetailResult({required this.id, required this.name, required this.episode, required this.airDate, final  List<RickMortyEpisodeDetailCharacter> characters = const []}): _characters = characters;
  factory _RickMortyEpisodeDetailResult.fromJson(Map<String, dynamic> json) => _$RickMortyEpisodeDetailResultFromJson(json);

@override final  String id;
@override final  String name;
@override final  String episode;
@override final  String airDate;
 final  List<RickMortyEpisodeDetailCharacter> _characters;
@override@JsonKey() List<RickMortyEpisodeDetailCharacter> get characters {
  if (_characters is EqualUnmodifiableListView) return _characters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_characters);
}


/// Create a copy of RickMortyEpisodeDetailResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyEpisodeDetailResultCopyWith<_RickMortyEpisodeDetailResult> get copyWith => __$RickMortyEpisodeDetailResultCopyWithImpl<_RickMortyEpisodeDetailResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyEpisodeDetailResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.episode, episode) || other.episode == episode)&&(identical(other.airDate, airDate) || other.airDate == airDate)&&const DeepCollectionEquality().equals(other._characters, _characters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,episode,airDate,const DeepCollectionEquality().hash(_characters));

@override
String toString() {
  return 'RickMortyEpisodeDetailResult(id: $id, name: $name, episode: $episode, airDate: $airDate, characters: $characters)';
}


}

/// @nodoc
abstract mixin class _$RickMortyEpisodeDetailResultCopyWith<$Res> implements $RickMortyEpisodeDetailResultCopyWith<$Res> {
  factory _$RickMortyEpisodeDetailResultCopyWith(_RickMortyEpisodeDetailResult value, $Res Function(_RickMortyEpisodeDetailResult) _then) = __$RickMortyEpisodeDetailResultCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String episode, String airDate, List<RickMortyEpisodeDetailCharacter> characters
});




}
/// @nodoc
class __$RickMortyEpisodeDetailResultCopyWithImpl<$Res>
    implements _$RickMortyEpisodeDetailResultCopyWith<$Res> {
  __$RickMortyEpisodeDetailResultCopyWithImpl(this._self, this._then);

  final _RickMortyEpisodeDetailResult _self;
  final $Res Function(_RickMortyEpisodeDetailResult) _then;

/// Create a copy of RickMortyEpisodeDetailResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? episode = null,Object? airDate = null,Object? characters = null,}) {
  return _then(_RickMortyEpisodeDetailResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,episode: null == episode ? _self.episode : episode // ignore: cast_nullable_to_non_nullable
as String,airDate: null == airDate ? _self.airDate : airDate // ignore: cast_nullable_to_non_nullable
as String,characters: null == characters ? _self._characters : characters // ignore: cast_nullable_to_non_nullable
as List<RickMortyEpisodeDetailCharacter>,
  ));
}


}


/// @nodoc
mixin _$RickMortyEpisodeDetailCharacter {

 String get id; String get name; String get status; String get image;
/// Create a copy of RickMortyEpisodeDetailCharacter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyEpisodeDetailCharacterCopyWith<RickMortyEpisodeDetailCharacter> get copyWith => _$RickMortyEpisodeDetailCharacterCopyWithImpl<RickMortyEpisodeDetailCharacter>(this as RickMortyEpisodeDetailCharacter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyEpisodeDetailCharacter&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,image);

@override
String toString() {
  return 'RickMortyEpisodeDetailCharacter(id: $id, name: $name, status: $status, image: $image)';
}


}

/// @nodoc
abstract mixin class $RickMortyEpisodeDetailCharacterCopyWith<$Res>  {
  factory $RickMortyEpisodeDetailCharacterCopyWith(RickMortyEpisodeDetailCharacter value, $Res Function(RickMortyEpisodeDetailCharacter) _then) = _$RickMortyEpisodeDetailCharacterCopyWithImpl;
@useResult
$Res call({
 String id, String name, String status, String image
});




}
/// @nodoc
class _$RickMortyEpisodeDetailCharacterCopyWithImpl<$Res>
    implements $RickMortyEpisodeDetailCharacterCopyWith<$Res> {
  _$RickMortyEpisodeDetailCharacterCopyWithImpl(this._self, this._then);

  final RickMortyEpisodeDetailCharacter _self;
  final $Res Function(RickMortyEpisodeDetailCharacter) _then;

/// Create a copy of RickMortyEpisodeDetailCharacter
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


/// Adds pattern-matching-related methods to [RickMortyEpisodeDetailCharacter].
extension RickMortyEpisodeDetailCharacterPatterns on RickMortyEpisodeDetailCharacter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RickMortyEpisodeDetailCharacter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RickMortyEpisodeDetailCharacter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RickMortyEpisodeDetailCharacter value)  $default,){
final _that = this;
switch (_that) {
case _RickMortyEpisodeDetailCharacter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RickMortyEpisodeDetailCharacter value)?  $default,){
final _that = this;
switch (_that) {
case _RickMortyEpisodeDetailCharacter() when $default != null:
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
case _RickMortyEpisodeDetailCharacter() when $default != null:
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
case _RickMortyEpisodeDetailCharacter():
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
case _RickMortyEpisodeDetailCharacter() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.image);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: false)
class _RickMortyEpisodeDetailCharacter implements RickMortyEpisodeDetailCharacter {
   _RickMortyEpisodeDetailCharacter({required this.id, required this.name, required this.status, required this.image});
  factory _RickMortyEpisodeDetailCharacter.fromJson(Map<String, dynamic> json) => _$RickMortyEpisodeDetailCharacterFromJson(json);

@override final  String id;
@override final  String name;
@override final  String status;
@override final  String image;

/// Create a copy of RickMortyEpisodeDetailCharacter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyEpisodeDetailCharacterCopyWith<_RickMortyEpisodeDetailCharacter> get copyWith => __$RickMortyEpisodeDetailCharacterCopyWithImpl<_RickMortyEpisodeDetailCharacter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyEpisodeDetailCharacter&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,image);

@override
String toString() {
  return 'RickMortyEpisodeDetailCharacter(id: $id, name: $name, status: $status, image: $image)';
}


}

/// @nodoc
abstract mixin class _$RickMortyEpisodeDetailCharacterCopyWith<$Res> implements $RickMortyEpisodeDetailCharacterCopyWith<$Res> {
  factory _$RickMortyEpisodeDetailCharacterCopyWith(_RickMortyEpisodeDetailCharacter value, $Res Function(_RickMortyEpisodeDetailCharacter) _then) = __$RickMortyEpisodeDetailCharacterCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String status, String image
});




}
/// @nodoc
class __$RickMortyEpisodeDetailCharacterCopyWithImpl<$Res>
    implements _$RickMortyEpisodeDetailCharacterCopyWith<$Res> {
  __$RickMortyEpisodeDetailCharacterCopyWithImpl(this._self, this._then);

  final _RickMortyEpisodeDetailCharacter _self;
  final $Res Function(_RickMortyEpisodeDetailCharacter) _then;

/// Create a copy of RickMortyEpisodeDetailCharacter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? image = null,}) {
  return _then(_RickMortyEpisodeDetailCharacter(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
