// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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

 String get id; String get name; String get image; ListStatus get status; ListGender get gender;
/// Create a copy of RickMortyListResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RickMortyListResultCopyWith<RickMortyListResult> get copyWith => _$RickMortyListResultCopyWithImpl<RickMortyListResult>(this as RickMortyListResult, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RickMortyListResult'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('gender', gender));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RickMortyListResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.status, status) || other.status == status)&&(identical(other.gender, gender) || other.gender == gender));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,status,gender);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RickMortyListResult(id: $id, name: $name, image: $image, status: $status, gender: $gender)';
}


}

/// @nodoc
abstract mixin class $RickMortyListResultCopyWith<$Res>  {
  factory $RickMortyListResultCopyWith(RickMortyListResult value, $Res Function(RickMortyListResult) _then) = _$RickMortyListResultCopyWithImpl;
@useResult
$Res call({
 String id, String name, String image, ListStatus status, ListGender gender
});




}
/// @nodoc
class _$RickMortyListResultCopyWithImpl<$Res>
    implements $RickMortyListResultCopyWith<$Res> {
  _$RickMortyListResultCopyWithImpl(this._self, this._then);

  final RickMortyListResult _self;
  final $Res Function(RickMortyListResult) _then;

/// Create a copy of RickMortyListResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,Object? status = null,Object? gender = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ListStatus,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as ListGender,
  ));
}

}


/// @nodoc

@JsonSerializable(createToJson: false)
class _RickMortyListResult with DiagnosticableTreeMixin implements RickMortyListResult {
   _RickMortyListResult({required this.id, required this.name, required this.image, this.status = ListStatus.unknown, this.gender = ListGender.unknown});
  factory _RickMortyListResult.fromJson(Map<String, dynamic> json) => _$RickMortyListResultFromJson(json);

@override final  String id;
@override final  String name;
@override final  String image;
@override@JsonKey() final  ListStatus status;
@override@JsonKey() final  ListGender gender;

/// Create a copy of RickMortyListResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RickMortyListResultCopyWith<_RickMortyListResult> get copyWith => __$RickMortyListResultCopyWithImpl<_RickMortyListResult>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RickMortyListResult'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('gender', gender));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RickMortyListResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.status, status) || other.status == status)&&(identical(other.gender, gender) || other.gender == gender));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,status,gender);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RickMortyListResult(id: $id, name: $name, image: $image, status: $status, gender: $gender)';
}


}

/// @nodoc
abstract mixin class _$RickMortyListResultCopyWith<$Res> implements $RickMortyListResultCopyWith<$Res> {
  factory _$RickMortyListResultCopyWith(_RickMortyListResult value, $Res Function(_RickMortyListResult) _then) = __$RickMortyListResultCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String image, ListStatus status, ListGender gender
});




}
/// @nodoc
class __$RickMortyListResultCopyWithImpl<$Res>
    implements _$RickMortyListResultCopyWith<$Res> {
  __$RickMortyListResultCopyWithImpl(this._self, this._then);

  final _RickMortyListResult _self;
  final $Res Function(_RickMortyListResult) _then;

/// Create a copy of RickMortyListResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,Object? status = null,Object? gender = null,}) {
  return _then(_RickMortyListResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ListStatus,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as ListGender,
  ));
}


}

// dart format on
