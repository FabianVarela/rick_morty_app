// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rick_morty_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RickMortyListData implements DiagnosticableTreeMixin {

 RickMortyListInfo get info; List<RickMortyListResult> get results;
/// Create a copy of RickMortyListData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyListDataCopyWith<RickMortyListData> get copyWith => _$RickMortyListDataCopyWithImpl<RickMortyListData>(this as RickMortyListData, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RickMortyListData'))
    ..add(DiagnosticsProperty('info', info))..add(DiagnosticsProperty('results', results));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyListData&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,const DeepCollectionEquality().hash(results));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RickMortyListData(info: $info, results: $results)';
}


}

/// @nodoc
abstract mixin class $RickMortyListDataCopyWith<$Res>  {
  factory $RickMortyListDataCopyWith(RickMortyListData value, $Res Function(RickMortyListData) _then) = _$RickMortyListDataCopyWithImpl;
@useResult
$Res call({
 RickMortyListInfo info, List<RickMortyListResult> results
});


$RickMortyListInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$RickMortyListDataCopyWithImpl<$Res>
    implements $RickMortyListDataCopyWith<$Res> {
  _$RickMortyListDataCopyWithImpl(this._self, this._then);

  final RickMortyListData _self;
  final $Res Function(RickMortyListData) _then;

/// Create a copy of RickMortyListData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,Object? results = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as RickMortyListInfo,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<RickMortyListResult>,
  ));
}
/// Create a copy of RickMortyListData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RickMortyListInfoCopyWith<$Res> get info {
  
  return $RickMortyListInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}


/// Adds pattern-matching-related methods to [RickMortyListData].
extension RickMortyListDataPatterns on RickMortyListData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RickMortyListData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RickMortyListData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RickMortyListData value)  $default,){
final _that = this;
switch (_that) {
case _RickMortyListData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RickMortyListData value)?  $default,){
final _that = this;
switch (_that) {
case _RickMortyListData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RickMortyListInfo info,  List<RickMortyListResult> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RickMortyListData() when $default != null:
return $default(_that.info,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RickMortyListInfo info,  List<RickMortyListResult> results)  $default,) {final _that = this;
switch (_that) {
case _RickMortyListData():
return $default(_that.info,_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RickMortyListInfo info,  List<RickMortyListResult> results)?  $default,) {final _that = this;
switch (_that) {
case _RickMortyListData() when $default != null:
return $default(_that.info,_that.results);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: false)
class _RickMortyListData with DiagnosticableTreeMixin implements RickMortyListData {
   _RickMortyListData({required this.info, required final  List<RickMortyListResult> results}): _results = results;
  factory _RickMortyListData.fromJson(Map<String, dynamic> json) => _$RickMortyListDataFromJson(json);

@override final  RickMortyListInfo info;
 final  List<RickMortyListResult> _results;
@override List<RickMortyListResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of RickMortyListData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyListDataCopyWith<_RickMortyListData> get copyWith => __$RickMortyListDataCopyWithImpl<_RickMortyListData>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RickMortyListData'))
    ..add(DiagnosticsProperty('info', info))..add(DiagnosticsProperty('results', results));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyListData&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,const DeepCollectionEquality().hash(_results));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RickMortyListData(info: $info, results: $results)';
}


}

/// @nodoc
abstract mixin class _$RickMortyListDataCopyWith<$Res> implements $RickMortyListDataCopyWith<$Res> {
  factory _$RickMortyListDataCopyWith(_RickMortyListData value, $Res Function(_RickMortyListData) _then) = __$RickMortyListDataCopyWithImpl;
@override @useResult
$Res call({
 RickMortyListInfo info, List<RickMortyListResult> results
});


@override $RickMortyListInfoCopyWith<$Res> get info;

}
/// @nodoc
class __$RickMortyListDataCopyWithImpl<$Res>
    implements _$RickMortyListDataCopyWith<$Res> {
  __$RickMortyListDataCopyWithImpl(this._self, this._then);

  final _RickMortyListData _self;
  final $Res Function(_RickMortyListData) _then;

/// Create a copy of RickMortyListData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,Object? results = null,}) {
  return _then(_RickMortyListData(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as RickMortyListInfo,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<RickMortyListResult>,
  ));
}

/// Create a copy of RickMortyListData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RickMortyListInfoCopyWith<$Res> get info {
  
  return $RickMortyListInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}


/// @nodoc
mixin _$RickMortyListInfo implements DiagnosticableTreeMixin {

 int get count; int get pages;
/// Create a copy of RickMortyListInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyListInfoCopyWith<RickMortyListInfo> get copyWith => _$RickMortyListInfoCopyWithImpl<RickMortyListInfo>(this as RickMortyListInfo, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RickMortyListInfo'))
    ..add(DiagnosticsProperty('count', count))..add(DiagnosticsProperty('pages', pages));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyListInfo&&(identical(other.count, count) || other.count == count)&&(identical(other.pages, pages) || other.pages == pages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,pages);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RickMortyListInfo(count: $count, pages: $pages)';
}


}

/// @nodoc
abstract mixin class $RickMortyListInfoCopyWith<$Res>  {
  factory $RickMortyListInfoCopyWith(RickMortyListInfo value, $Res Function(RickMortyListInfo) _then) = _$RickMortyListInfoCopyWithImpl;
@useResult
$Res call({
 int count, int pages
});




}
/// @nodoc
class _$RickMortyListInfoCopyWithImpl<$Res>
    implements $RickMortyListInfoCopyWith<$Res> {
  _$RickMortyListInfoCopyWithImpl(this._self, this._then);

  final RickMortyListInfo _self;
  final $Res Function(RickMortyListInfo) _then;

/// Create a copy of RickMortyListInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? pages = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RickMortyListInfo].
extension RickMortyListInfoPatterns on RickMortyListInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RickMortyListInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RickMortyListInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RickMortyListInfo value)  $default,){
final _that = this;
switch (_that) {
case _RickMortyListInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RickMortyListInfo value)?  $default,){
final _that = this;
switch (_that) {
case _RickMortyListInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  int pages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RickMortyListInfo() when $default != null:
return $default(_that.count,_that.pages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  int pages)  $default,) {final _that = this;
switch (_that) {
case _RickMortyListInfo():
return $default(_that.count,_that.pages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  int pages)?  $default,) {final _that = this;
switch (_that) {
case _RickMortyListInfo() when $default != null:
return $default(_that.count,_that.pages);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: false)
class _RickMortyListInfo with DiagnosticableTreeMixin implements RickMortyListInfo {
   _RickMortyListInfo({required this.count, required this.pages});
  factory _RickMortyListInfo.fromJson(Map<String, dynamic> json) => _$RickMortyListInfoFromJson(json);

@override final  int count;
@override final  int pages;

/// Create a copy of RickMortyListInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyListInfoCopyWith<_RickMortyListInfo> get copyWith => __$RickMortyListInfoCopyWithImpl<_RickMortyListInfo>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RickMortyListInfo'))
    ..add(DiagnosticsProperty('count', count))..add(DiagnosticsProperty('pages', pages));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyListInfo&&(identical(other.count, count) || other.count == count)&&(identical(other.pages, pages) || other.pages == pages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,pages);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RickMortyListInfo(count: $count, pages: $pages)';
}


}

/// @nodoc
abstract mixin class _$RickMortyListInfoCopyWith<$Res> implements $RickMortyListInfoCopyWith<$Res> {
  factory _$RickMortyListInfoCopyWith(_RickMortyListInfo value, $Res Function(_RickMortyListInfo) _then) = __$RickMortyListInfoCopyWithImpl;
@override @useResult
$Res call({
 int count, int pages
});




}
/// @nodoc
class __$RickMortyListInfoCopyWithImpl<$Res>
    implements _$RickMortyListInfoCopyWith<$Res> {
  __$RickMortyListInfoCopyWithImpl(this._self, this._then);

  final _RickMortyListInfo _self;
  final $Res Function(_RickMortyListInfo) _then;

/// Create a copy of RickMortyListInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? pages = null,}) {
  return _then(_RickMortyListInfo(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$RickMortyListResult implements DiagnosticableTreeMixin {

 String get id; String get name; String get image; ListStatus get status; ListGender get gender; String get species; RickMortyListLocation? get location;
/// Create a copy of RickMortyListResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyListResultCopyWith<RickMortyListResult> get copyWith => _$RickMortyListResultCopyWithImpl<RickMortyListResult>(this as RickMortyListResult, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RickMortyListResult'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('gender', gender))..add(DiagnosticsProperty('species', species))..add(DiagnosticsProperty('location', location));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyListResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.status, status) || other.status == status)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.species, species) || other.species == species)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,status,gender,species,location);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RickMortyListResult(id: $id, name: $name, image: $image, status: $status, gender: $gender, species: $species, location: $location)';
}


}

/// @nodoc
abstract mixin class $RickMortyListResultCopyWith<$Res>  {
  factory $RickMortyListResultCopyWith(RickMortyListResult value, $Res Function(RickMortyListResult) _then) = _$RickMortyListResultCopyWithImpl;
@useResult
$Res call({
 String id, String name, String image, ListStatus status, ListGender gender, String species, RickMortyListLocation? location
});


$RickMortyListLocationCopyWith<$Res>? get location;

}
/// @nodoc
class _$RickMortyListResultCopyWithImpl<$Res>
    implements $RickMortyListResultCopyWith<$Res> {
  _$RickMortyListResultCopyWithImpl(this._self, this._then);

  final RickMortyListResult _self;
  final $Res Function(RickMortyListResult) _then;

/// Create a copy of RickMortyListResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,Object? status = null,Object? gender = null,Object? species = null,Object? location = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ListStatus,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as ListGender,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as RickMortyListLocation?,
  ));
}
/// Create a copy of RickMortyListResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RickMortyListLocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $RickMortyListLocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// Adds pattern-matching-related methods to [RickMortyListResult].
extension RickMortyListResultPatterns on RickMortyListResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RickMortyListResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RickMortyListResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RickMortyListResult value)  $default,){
final _that = this;
switch (_that) {
case _RickMortyListResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RickMortyListResult value)?  $default,){
final _that = this;
switch (_that) {
case _RickMortyListResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String image,  ListStatus status,  ListGender gender,  String species,  RickMortyListLocation? location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RickMortyListResult() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.status,_that.gender,_that.species,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String image,  ListStatus status,  ListGender gender,  String species,  RickMortyListLocation? location)  $default,) {final _that = this;
switch (_that) {
case _RickMortyListResult():
return $default(_that.id,_that.name,_that.image,_that.status,_that.gender,_that.species,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String image,  ListStatus status,  ListGender gender,  String species,  RickMortyListLocation? location)?  $default,) {final _that = this;
switch (_that) {
case _RickMortyListResult() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.status,_that.gender,_that.species,_that.location);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: false)
class _RickMortyListResult with DiagnosticableTreeMixin implements RickMortyListResult {
   _RickMortyListResult({required this.id, required this.name, required this.image, this.status = ListStatus.unknown, this.gender = ListGender.unknown, this.species = '', this.location});
  factory _RickMortyListResult.fromJson(Map<String, dynamic> json) => _$RickMortyListResultFromJson(json);

@override final  String id;
@override final  String name;
@override final  String image;
@override@JsonKey() final  ListStatus status;
@override@JsonKey() final  ListGender gender;
@override@JsonKey() final  String species;
@override final  RickMortyListLocation? location;

/// Create a copy of RickMortyListResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyListResultCopyWith<_RickMortyListResult> get copyWith => __$RickMortyListResultCopyWithImpl<_RickMortyListResult>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RickMortyListResult'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('gender', gender))..add(DiagnosticsProperty('species', species))..add(DiagnosticsProperty('location', location));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyListResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.status, status) || other.status == status)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.species, species) || other.species == species)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,status,gender,species,location);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RickMortyListResult(id: $id, name: $name, image: $image, status: $status, gender: $gender, species: $species, location: $location)';
}


}

/// @nodoc
abstract mixin class _$RickMortyListResultCopyWith<$Res> implements $RickMortyListResultCopyWith<$Res> {
  factory _$RickMortyListResultCopyWith(_RickMortyListResult value, $Res Function(_RickMortyListResult) _then) = __$RickMortyListResultCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String image, ListStatus status, ListGender gender, String species, RickMortyListLocation? location
});


@override $RickMortyListLocationCopyWith<$Res>? get location;

}
/// @nodoc
class __$RickMortyListResultCopyWithImpl<$Res>
    implements _$RickMortyListResultCopyWith<$Res> {
  __$RickMortyListResultCopyWithImpl(this._self, this._then);

  final _RickMortyListResult _self;
  final $Res Function(_RickMortyListResult) _then;

/// Create a copy of RickMortyListResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,Object? status = null,Object? gender = null,Object? species = null,Object? location = freezed,}) {
  return _then(_RickMortyListResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ListStatus,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as ListGender,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as RickMortyListLocation?,
  ));
}

/// Create a copy of RickMortyListResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RickMortyListLocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $RickMortyListLocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// @nodoc
mixin _$RickMortyListLocation implements DiagnosticableTreeMixin {

 String? get name;
/// Create a copy of RickMortyListLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyListLocationCopyWith<RickMortyListLocation> get copyWith => _$RickMortyListLocationCopyWithImpl<RickMortyListLocation>(this as RickMortyListLocation, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RickMortyListLocation'))
    ..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyListLocation&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RickMortyListLocation(name: $name)';
}


}

/// @nodoc
abstract mixin class $RickMortyListLocationCopyWith<$Res>  {
  factory $RickMortyListLocationCopyWith(RickMortyListLocation value, $Res Function(RickMortyListLocation) _then) = _$RickMortyListLocationCopyWithImpl;
@useResult
$Res call({
 String? name
});




}
/// @nodoc
class _$RickMortyListLocationCopyWithImpl<$Res>
    implements $RickMortyListLocationCopyWith<$Res> {
  _$RickMortyListLocationCopyWithImpl(this._self, this._then);

  final RickMortyListLocation _self;
  final $Res Function(RickMortyListLocation) _then;

/// Create a copy of RickMortyListLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RickMortyListLocation].
extension RickMortyListLocationPatterns on RickMortyListLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RickMortyListLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RickMortyListLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RickMortyListLocation value)  $default,){
final _that = this;
switch (_that) {
case _RickMortyListLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RickMortyListLocation value)?  $default,){
final _that = this;
switch (_that) {
case _RickMortyListLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RickMortyListLocation() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name)  $default,) {final _that = this;
switch (_that) {
case _RickMortyListLocation():
return $default(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name)?  $default,) {final _that = this;
switch (_that) {
case _RickMortyListLocation() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: false)
class _RickMortyListLocation with DiagnosticableTreeMixin implements RickMortyListLocation {
   _RickMortyListLocation({this.name});
  factory _RickMortyListLocation.fromJson(Map<String, dynamic> json) => _$RickMortyListLocationFromJson(json);

@override final  String? name;

/// Create a copy of RickMortyListLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyListLocationCopyWith<_RickMortyListLocation> get copyWith => __$RickMortyListLocationCopyWithImpl<_RickMortyListLocation>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RickMortyListLocation'))
    ..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyListLocation&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RickMortyListLocation(name: $name)';
}


}

/// @nodoc
abstract mixin class _$RickMortyListLocationCopyWith<$Res> implements $RickMortyListLocationCopyWith<$Res> {
  factory _$RickMortyListLocationCopyWith(_RickMortyListLocation value, $Res Function(_RickMortyListLocation) _then) = __$RickMortyListLocationCopyWithImpl;
@override @useResult
$Res call({
 String? name
});




}
/// @nodoc
class __$RickMortyListLocationCopyWithImpl<$Res>
    implements _$RickMortyListLocationCopyWith<$Res> {
  __$RickMortyListLocationCopyWithImpl(this._self, this._then);

  final _RickMortyListLocation _self;
  final $Res Function(_RickMortyListLocation) _then;

/// Create a copy of RickMortyListLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,}) {
  return _then(_RickMortyListLocation(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
