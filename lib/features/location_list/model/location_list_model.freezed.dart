// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RickMortyLocationListData {

 RickMortyLocationListInfo get info; List<RickMortyLocationListResult> get results;
/// Create a copy of RickMortyLocationListData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyLocationListDataCopyWith<RickMortyLocationListData> get copyWith => _$RickMortyLocationListDataCopyWithImpl<RickMortyLocationListData>(this as RickMortyLocationListData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyLocationListData&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'RickMortyLocationListData(info: $info, results: $results)';
}


}

/// @nodoc
abstract mixin class $RickMortyLocationListDataCopyWith<$Res>  {
  factory $RickMortyLocationListDataCopyWith(RickMortyLocationListData value, $Res Function(RickMortyLocationListData) _then) = _$RickMortyLocationListDataCopyWithImpl;
@useResult
$Res call({
 RickMortyLocationListInfo info, List<RickMortyLocationListResult> results
});


$RickMortyLocationListInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$RickMortyLocationListDataCopyWithImpl<$Res>
    implements $RickMortyLocationListDataCopyWith<$Res> {
  _$RickMortyLocationListDataCopyWithImpl(this._self, this._then);

  final RickMortyLocationListData _self;
  final $Res Function(RickMortyLocationListData) _then;

/// Create a copy of RickMortyLocationListData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,Object? results = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as RickMortyLocationListInfo,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<RickMortyLocationListResult>,
  ));
}
/// Create a copy of RickMortyLocationListData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RickMortyLocationListInfoCopyWith<$Res> get info {
  
  return $RickMortyLocationListInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}


/// Adds pattern-matching-related methods to [RickMortyLocationListData].
extension RickMortyLocationListDataPatterns on RickMortyLocationListData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RickMortyLocationListData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RickMortyLocationListData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RickMortyLocationListData value)  $default,){
final _that = this;
switch (_that) {
case _RickMortyLocationListData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RickMortyLocationListData value)?  $default,){
final _that = this;
switch (_that) {
case _RickMortyLocationListData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RickMortyLocationListInfo info,  List<RickMortyLocationListResult> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RickMortyLocationListData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RickMortyLocationListInfo info,  List<RickMortyLocationListResult> results)  $default,) {final _that = this;
switch (_that) {
case _RickMortyLocationListData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RickMortyLocationListInfo info,  List<RickMortyLocationListResult> results)?  $default,) {final _that = this;
switch (_that) {
case _RickMortyLocationListData() when $default != null:
return $default(_that.info,_that.results);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: false)
class _RickMortyLocationListData implements RickMortyLocationListData {
   _RickMortyLocationListData({required this.info, required final  List<RickMortyLocationListResult> results}): _results = results;
  factory _RickMortyLocationListData.fromJson(Map<String, dynamic> json) => _$RickMortyLocationListDataFromJson(json);

@override final  RickMortyLocationListInfo info;
 final  List<RickMortyLocationListResult> _results;
@override List<RickMortyLocationListResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of RickMortyLocationListData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyLocationListDataCopyWith<_RickMortyLocationListData> get copyWith => __$RickMortyLocationListDataCopyWithImpl<_RickMortyLocationListData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyLocationListData&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'RickMortyLocationListData(info: $info, results: $results)';
}


}

/// @nodoc
abstract mixin class _$RickMortyLocationListDataCopyWith<$Res> implements $RickMortyLocationListDataCopyWith<$Res> {
  factory _$RickMortyLocationListDataCopyWith(_RickMortyLocationListData value, $Res Function(_RickMortyLocationListData) _then) = __$RickMortyLocationListDataCopyWithImpl;
@override @useResult
$Res call({
 RickMortyLocationListInfo info, List<RickMortyLocationListResult> results
});


@override $RickMortyLocationListInfoCopyWith<$Res> get info;

}
/// @nodoc
class __$RickMortyLocationListDataCopyWithImpl<$Res>
    implements _$RickMortyLocationListDataCopyWith<$Res> {
  __$RickMortyLocationListDataCopyWithImpl(this._self, this._then);

  final _RickMortyLocationListData _self;
  final $Res Function(_RickMortyLocationListData) _then;

/// Create a copy of RickMortyLocationListData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,Object? results = null,}) {
  return _then(_RickMortyLocationListData(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as RickMortyLocationListInfo,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<RickMortyLocationListResult>,
  ));
}

/// Create a copy of RickMortyLocationListData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RickMortyLocationListInfoCopyWith<$Res> get info {
  
  return $RickMortyLocationListInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}


/// @nodoc
mixin _$RickMortyLocationListInfo {

 int get count; int get pages;
/// Create a copy of RickMortyLocationListInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyLocationListInfoCopyWith<RickMortyLocationListInfo> get copyWith => _$RickMortyLocationListInfoCopyWithImpl<RickMortyLocationListInfo>(this as RickMortyLocationListInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyLocationListInfo&&(identical(other.count, count) || other.count == count)&&(identical(other.pages, pages) || other.pages == pages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,pages);

@override
String toString() {
  return 'RickMortyLocationListInfo(count: $count, pages: $pages)';
}


}

/// @nodoc
abstract mixin class $RickMortyLocationListInfoCopyWith<$Res>  {
  factory $RickMortyLocationListInfoCopyWith(RickMortyLocationListInfo value, $Res Function(RickMortyLocationListInfo) _then) = _$RickMortyLocationListInfoCopyWithImpl;
@useResult
$Res call({
 int count, int pages
});




}
/// @nodoc
class _$RickMortyLocationListInfoCopyWithImpl<$Res>
    implements $RickMortyLocationListInfoCopyWith<$Res> {
  _$RickMortyLocationListInfoCopyWithImpl(this._self, this._then);

  final RickMortyLocationListInfo _self;
  final $Res Function(RickMortyLocationListInfo) _then;

/// Create a copy of RickMortyLocationListInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? pages = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RickMortyLocationListInfo].
extension RickMortyLocationListInfoPatterns on RickMortyLocationListInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RickMortyLocationListInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RickMortyLocationListInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RickMortyLocationListInfo value)  $default,){
final _that = this;
switch (_that) {
case _RickMortyLocationListInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RickMortyLocationListInfo value)?  $default,){
final _that = this;
switch (_that) {
case _RickMortyLocationListInfo() when $default != null:
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
case _RickMortyLocationListInfo() when $default != null:
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
case _RickMortyLocationListInfo():
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
case _RickMortyLocationListInfo() when $default != null:
return $default(_that.count,_that.pages);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: false)
class _RickMortyLocationListInfo implements RickMortyLocationListInfo {
   _RickMortyLocationListInfo({required this.count, required this.pages});
  factory _RickMortyLocationListInfo.fromJson(Map<String, dynamic> json) => _$RickMortyLocationListInfoFromJson(json);

@override final  int count;
@override final  int pages;

/// Create a copy of RickMortyLocationListInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyLocationListInfoCopyWith<_RickMortyLocationListInfo> get copyWith => __$RickMortyLocationListInfoCopyWithImpl<_RickMortyLocationListInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyLocationListInfo&&(identical(other.count, count) || other.count == count)&&(identical(other.pages, pages) || other.pages == pages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,pages);

@override
String toString() {
  return 'RickMortyLocationListInfo(count: $count, pages: $pages)';
}


}

/// @nodoc
abstract mixin class _$RickMortyLocationListInfoCopyWith<$Res> implements $RickMortyLocationListInfoCopyWith<$Res> {
  factory _$RickMortyLocationListInfoCopyWith(_RickMortyLocationListInfo value, $Res Function(_RickMortyLocationListInfo) _then) = __$RickMortyLocationListInfoCopyWithImpl;
@override @useResult
$Res call({
 int count, int pages
});




}
/// @nodoc
class __$RickMortyLocationListInfoCopyWithImpl<$Res>
    implements _$RickMortyLocationListInfoCopyWith<$Res> {
  __$RickMortyLocationListInfoCopyWithImpl(this._self, this._then);

  final _RickMortyLocationListInfo _self;
  final $Res Function(_RickMortyLocationListInfo) _then;

/// Create a copy of RickMortyLocationListInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? pages = null,}) {
  return _then(_RickMortyLocationListInfo(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$RickMortyLocationListResult {

 String get id; String get name; String get type; String get dimension;
/// Create a copy of RickMortyLocationListResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyLocationListResultCopyWith<RickMortyLocationListResult> get copyWith => _$RickMortyLocationListResultCopyWithImpl<RickMortyLocationListResult>(this as RickMortyLocationListResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyLocationListResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.dimension, dimension) || other.dimension == dimension));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,dimension);

@override
String toString() {
  return 'RickMortyLocationListResult(id: $id, name: $name, type: $type, dimension: $dimension)';
}


}

/// @nodoc
abstract mixin class $RickMortyLocationListResultCopyWith<$Res>  {
  factory $RickMortyLocationListResultCopyWith(RickMortyLocationListResult value, $Res Function(RickMortyLocationListResult) _then) = _$RickMortyLocationListResultCopyWithImpl;
@useResult
$Res call({
 String id, String name, String type, String dimension
});




}
/// @nodoc
class _$RickMortyLocationListResultCopyWithImpl<$Res>
    implements $RickMortyLocationListResultCopyWith<$Res> {
  _$RickMortyLocationListResultCopyWithImpl(this._self, this._then);

  final RickMortyLocationListResult _self;
  final $Res Function(RickMortyLocationListResult) _then;

/// Create a copy of RickMortyLocationListResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? dimension = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RickMortyLocationListResult].
extension RickMortyLocationListResultPatterns on RickMortyLocationListResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RickMortyLocationListResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RickMortyLocationListResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RickMortyLocationListResult value)  $default,){
final _that = this;
switch (_that) {
case _RickMortyLocationListResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RickMortyLocationListResult value)?  $default,){
final _that = this;
switch (_that) {
case _RickMortyLocationListResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String type,  String dimension)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RickMortyLocationListResult() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.dimension);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String type,  String dimension)  $default,) {final _that = this;
switch (_that) {
case _RickMortyLocationListResult():
return $default(_that.id,_that.name,_that.type,_that.dimension);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String type,  String dimension)?  $default,) {final _that = this;
switch (_that) {
case _RickMortyLocationListResult() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.dimension);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class _RickMortyLocationListResult implements RickMortyLocationListResult {
   _RickMortyLocationListResult({required this.id, required this.name, required this.type, required this.dimension});
  factory _RickMortyLocationListResult.fromJson(Map<String, dynamic> json) => _$RickMortyLocationListResultFromJson(json);

@override final  String id;
@override final  String name;
@override final  String type;
@override final  String dimension;

/// Create a copy of RickMortyLocationListResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyLocationListResultCopyWith<_RickMortyLocationListResult> get copyWith => __$RickMortyLocationListResultCopyWithImpl<_RickMortyLocationListResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyLocationListResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.dimension, dimension) || other.dimension == dimension));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,dimension);

@override
String toString() {
  return 'RickMortyLocationListResult(id: $id, name: $name, type: $type, dimension: $dimension)';
}


}

/// @nodoc
abstract mixin class _$RickMortyLocationListResultCopyWith<$Res> implements $RickMortyLocationListResultCopyWith<$Res> {
  factory _$RickMortyLocationListResultCopyWith(_RickMortyLocationListResult value, $Res Function(_RickMortyLocationListResult) _then) = __$RickMortyLocationListResultCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String type, String dimension
});




}
/// @nodoc
class __$RickMortyLocationListResultCopyWithImpl<$Res>
    implements _$RickMortyLocationListResultCopyWith<$Res> {
  __$RickMortyLocationListResultCopyWithImpl(this._self, this._then);

  final _RickMortyLocationListResult _self;
  final $Res Function(_RickMortyLocationListResult) _then;

/// Create a copy of RickMortyLocationListResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? dimension = null,}) {
  return _then(_RickMortyLocationListResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
