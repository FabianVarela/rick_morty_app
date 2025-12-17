// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RickMortyEpisodeListData {

 List<RickMortyEpisodeListResult> get results;
/// Create a copy of RickMortyEpisodeListData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyEpisodeListDataCopyWith<RickMortyEpisodeListData> get copyWith => _$RickMortyEpisodeListDataCopyWithImpl<RickMortyEpisodeListData>(this as RickMortyEpisodeListData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyEpisodeListData&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'RickMortyEpisodeListData(results: $results)';
}


}

/// @nodoc
abstract mixin class $RickMortyEpisodeListDataCopyWith<$Res>  {
  factory $RickMortyEpisodeListDataCopyWith(RickMortyEpisodeListData value, $Res Function(RickMortyEpisodeListData) _then) = _$RickMortyEpisodeListDataCopyWithImpl;
@useResult
$Res call({
 List<RickMortyEpisodeListResult> results
});




}
/// @nodoc
class _$RickMortyEpisodeListDataCopyWithImpl<$Res>
    implements $RickMortyEpisodeListDataCopyWith<$Res> {
  _$RickMortyEpisodeListDataCopyWithImpl(this._self, this._then);

  final RickMortyEpisodeListData _self;
  final $Res Function(RickMortyEpisodeListData) _then;

/// Create a copy of RickMortyEpisodeListData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,}) {
  return _then(_self.copyWith(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<RickMortyEpisodeListResult>,
  ));
}

}


/// Adds pattern-matching-related methods to [RickMortyEpisodeListData].
extension RickMortyEpisodeListDataPatterns on RickMortyEpisodeListData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RickMortyEpisodeListData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RickMortyEpisodeListData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RickMortyEpisodeListData value)  $default,){
final _that = this;
switch (_that) {
case _RickMortyEpisodeListData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RickMortyEpisodeListData value)?  $default,){
final _that = this;
switch (_that) {
case _RickMortyEpisodeListData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RickMortyEpisodeListResult> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RickMortyEpisodeListData() when $default != null:
return $default(_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RickMortyEpisodeListResult> results)  $default,) {final _that = this;
switch (_that) {
case _RickMortyEpisodeListData():
return $default(_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RickMortyEpisodeListResult> results)?  $default,) {final _that = this;
switch (_that) {
case _RickMortyEpisodeListData() when $default != null:
return $default(_that.results);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: false)
class _RickMortyEpisodeListData implements RickMortyEpisodeListData {
   _RickMortyEpisodeListData({required final  List<RickMortyEpisodeListResult> results}): _results = results;
  factory _RickMortyEpisodeListData.fromJson(Map<String, dynamic> json) => _$RickMortyEpisodeListDataFromJson(json);

 final  List<RickMortyEpisodeListResult> _results;
@override List<RickMortyEpisodeListResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of RickMortyEpisodeListData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyEpisodeListDataCopyWith<_RickMortyEpisodeListData> get copyWith => __$RickMortyEpisodeListDataCopyWithImpl<_RickMortyEpisodeListData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyEpisodeListData&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'RickMortyEpisodeListData(results: $results)';
}


}

/// @nodoc
abstract mixin class _$RickMortyEpisodeListDataCopyWith<$Res> implements $RickMortyEpisodeListDataCopyWith<$Res> {
  factory _$RickMortyEpisodeListDataCopyWith(_RickMortyEpisodeListData value, $Res Function(_RickMortyEpisodeListData) _then) = __$RickMortyEpisodeListDataCopyWithImpl;
@override @useResult
$Res call({
 List<RickMortyEpisodeListResult> results
});




}
/// @nodoc
class __$RickMortyEpisodeListDataCopyWithImpl<$Res>
    implements _$RickMortyEpisodeListDataCopyWith<$Res> {
  __$RickMortyEpisodeListDataCopyWithImpl(this._self, this._then);

  final _RickMortyEpisodeListData _self;
  final $Res Function(_RickMortyEpisodeListData) _then;

/// Create a copy of RickMortyEpisodeListData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(_RickMortyEpisodeListData(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<RickMortyEpisodeListResult>,
  ));
}


}


/// @nodoc
mixin _$RickMortyEpisodeListResult {

 String get id; String get name; String get airDate; String get episode;
/// Create a copy of RickMortyEpisodeListResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyEpisodeListResultCopyWith<RickMortyEpisodeListResult> get copyWith => _$RickMortyEpisodeListResultCopyWithImpl<RickMortyEpisodeListResult>(this as RickMortyEpisodeListResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyEpisodeListResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.airDate, airDate) || other.airDate == airDate)&&(identical(other.episode, episode) || other.episode == episode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,airDate,episode);

@override
String toString() {
  return 'RickMortyEpisodeListResult(id: $id, name: $name, airDate: $airDate, episode: $episode)';
}


}

/// @nodoc
abstract mixin class $RickMortyEpisodeListResultCopyWith<$Res>  {
  factory $RickMortyEpisodeListResultCopyWith(RickMortyEpisodeListResult value, $Res Function(RickMortyEpisodeListResult) _then) = _$RickMortyEpisodeListResultCopyWithImpl;
@useResult
$Res call({
 String id, String name, String airDate, String episode
});




}
/// @nodoc
class _$RickMortyEpisodeListResultCopyWithImpl<$Res>
    implements $RickMortyEpisodeListResultCopyWith<$Res> {
  _$RickMortyEpisodeListResultCopyWithImpl(this._self, this._then);

  final RickMortyEpisodeListResult _self;
  final $Res Function(RickMortyEpisodeListResult) _then;

/// Create a copy of RickMortyEpisodeListResult
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


/// Adds pattern-matching-related methods to [RickMortyEpisodeListResult].
extension RickMortyEpisodeListResultPatterns on RickMortyEpisodeListResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RickMortyEpisodeListResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RickMortyEpisodeListResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RickMortyEpisodeListResult value)  $default,){
final _that = this;
switch (_that) {
case _RickMortyEpisodeListResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RickMortyEpisodeListResult value)?  $default,){
final _that = this;
switch (_that) {
case _RickMortyEpisodeListResult() when $default != null:
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
case _RickMortyEpisodeListResult() when $default != null:
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
case _RickMortyEpisodeListResult():
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
case _RickMortyEpisodeListResult() when $default != null:
return $default(_that.id,_that.name,_that.airDate,_that.episode);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class _RickMortyEpisodeListResult implements RickMortyEpisodeListResult {
   _RickMortyEpisodeListResult({required this.id, required this.name, required this.airDate, required this.episode});
  factory _RickMortyEpisodeListResult.fromJson(Map<String, dynamic> json) => _$RickMortyEpisodeListResultFromJson(json);

@override final  String id;
@override final  String name;
@override final  String airDate;
@override final  String episode;

/// Create a copy of RickMortyEpisodeListResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyEpisodeListResultCopyWith<_RickMortyEpisodeListResult> get copyWith => __$RickMortyEpisodeListResultCopyWithImpl<_RickMortyEpisodeListResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyEpisodeListResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.airDate, airDate) || other.airDate == airDate)&&(identical(other.episode, episode) || other.episode == episode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,airDate,episode);

@override
String toString() {
  return 'RickMortyEpisodeListResult(id: $id, name: $name, airDate: $airDate, episode: $episode)';
}


}

/// @nodoc
abstract mixin class _$RickMortyEpisodeListResultCopyWith<$Res> implements $RickMortyEpisodeListResultCopyWith<$Res> {
  factory _$RickMortyEpisodeListResultCopyWith(_RickMortyEpisodeListResult value, $Res Function(_RickMortyEpisodeListResult) _then) = __$RickMortyEpisodeListResultCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String airDate, String episode
});




}
/// @nodoc
class __$RickMortyEpisodeListResultCopyWithImpl<$Res>
    implements _$RickMortyEpisodeListResultCopyWith<$Res> {
  __$RickMortyEpisodeListResultCopyWithImpl(this._self, this._then);

  final _RickMortyEpisodeListResult _self;
  final $Res Function(_RickMortyEpisodeListResult) _then;

/// Create a copy of RickMortyEpisodeListResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? airDate = null,Object? episode = null,}) {
  return _then(_RickMortyEpisodeListResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,airDate: null == airDate ? _self.airDate : airDate // ignore: cast_nullable_to_non_nullable
as String,episode: null == episode ? _self.episode : episode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
