// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rick_morty_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RickMortyListData _$RickMortyListDataFromJson(Map<String, dynamic> json) {
  return _RickMortyListData.fromJson(json);
}

/// @nodoc
mixin _$RickMortyListData {
  RickMortyListInfo get info => throw _privateConstructorUsedError;
  List<RickMortyListResult> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RickMortyListDataCopyWith<RickMortyListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RickMortyListDataCopyWith<$Res> {
  factory $RickMortyListDataCopyWith(
          RickMortyListData value, $Res Function(RickMortyListData) then) =
      _$RickMortyListDataCopyWithImpl<$Res, RickMortyListData>;
  @useResult
  $Res call({RickMortyListInfo info, List<RickMortyListResult> results});

  $RickMortyListInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$RickMortyListDataCopyWithImpl<$Res, $Val extends RickMortyListData>
    implements $RickMortyListDataCopyWith<$Res> {
  _$RickMortyListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RickMortyListInfo,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<RickMortyListResult>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RickMortyListInfoCopyWith<$Res> get info {
    return $RickMortyListInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RickMortyListDataCopyWith<$Res>
    implements $RickMortyListDataCopyWith<$Res> {
  factory _$$_RickMortyListDataCopyWith(_$_RickMortyListData value,
          $Res Function(_$_RickMortyListData) then) =
      __$$_RickMortyListDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RickMortyListInfo info, List<RickMortyListResult> results});

  @override
  $RickMortyListInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$_RickMortyListDataCopyWithImpl<$Res>
    extends _$RickMortyListDataCopyWithImpl<$Res, _$_RickMortyListData>
    implements _$$_RickMortyListDataCopyWith<$Res> {
  __$$_RickMortyListDataCopyWithImpl(
      _$_RickMortyListData _value, $Res Function(_$_RickMortyListData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_$_RickMortyListData(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RickMortyListInfo,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<RickMortyListResult>,
    ));
  }
}

/// @nodoc

@JsonSerializable(createToJson: false)
class _$_RickMortyListData
    with DiagnosticableTreeMixin
    implements _RickMortyListData {
  _$_RickMortyListData(
      {required this.info, required final List<RickMortyListResult> results})
      : _results = results;

  factory _$_RickMortyListData.fromJson(Map<String, dynamic> json) =>
      _$$_RickMortyListDataFromJson(json);

  @override
  final RickMortyListInfo info;
  final List<RickMortyListResult> _results;
  @override
  List<RickMortyListResult> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RickMortyListData(info: $info, results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RickMortyListData'))
      ..add(DiagnosticsProperty('info', info))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RickMortyListData &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RickMortyListDataCopyWith<_$_RickMortyListData> get copyWith =>
      __$$_RickMortyListDataCopyWithImpl<_$_RickMortyListData>(
          this, _$identity);
}

abstract class _RickMortyListData implements RickMortyListData {
  factory _RickMortyListData(
      {required final RickMortyListInfo info,
      required final List<RickMortyListResult> results}) = _$_RickMortyListData;

  factory _RickMortyListData.fromJson(Map<String, dynamic> json) =
      _$_RickMortyListData.fromJson;

  @override
  RickMortyListInfo get info;
  @override
  List<RickMortyListResult> get results;
  @override
  @JsonKey(ignore: true)
  _$$_RickMortyListDataCopyWith<_$_RickMortyListData> get copyWith =>
      throw _privateConstructorUsedError;
}

RickMortyListInfo _$RickMortyListInfoFromJson(Map<String, dynamic> json) {
  return _RickMortyListInfo.fromJson(json);
}

/// @nodoc
mixin _$RickMortyListInfo {
  int get count => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RickMortyListInfoCopyWith<RickMortyListInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RickMortyListInfoCopyWith<$Res> {
  factory $RickMortyListInfoCopyWith(
          RickMortyListInfo value, $Res Function(RickMortyListInfo) then) =
      _$RickMortyListInfoCopyWithImpl<$Res, RickMortyListInfo>;
  @useResult
  $Res call({int count, int pages});
}

/// @nodoc
class _$RickMortyListInfoCopyWithImpl<$Res, $Val extends RickMortyListInfo>
    implements $RickMortyListInfoCopyWith<$Res> {
  _$RickMortyListInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RickMortyListInfoCopyWith<$Res>
    implements $RickMortyListInfoCopyWith<$Res> {
  factory _$$_RickMortyListInfoCopyWith(_$_RickMortyListInfo value,
          $Res Function(_$_RickMortyListInfo) then) =
      __$$_RickMortyListInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int pages});
}

/// @nodoc
class __$$_RickMortyListInfoCopyWithImpl<$Res>
    extends _$RickMortyListInfoCopyWithImpl<$Res, _$_RickMortyListInfo>
    implements _$$_RickMortyListInfoCopyWith<$Res> {
  __$$_RickMortyListInfoCopyWithImpl(
      _$_RickMortyListInfo _value, $Res Function(_$_RickMortyListInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
  }) {
    return _then(_$_RickMortyListInfo(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(createToJson: false)
class _$_RickMortyListInfo
    with DiagnosticableTreeMixin
    implements _RickMortyListInfo {
  _$_RickMortyListInfo({required this.count, required this.pages});

  factory _$_RickMortyListInfo.fromJson(Map<String, dynamic> json) =>
      _$$_RickMortyListInfoFromJson(json);

  @override
  final int count;
  @override
  final int pages;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RickMortyListInfo(count: $count, pages: $pages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RickMortyListInfo'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('pages', pages));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RickMortyListInfo &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, pages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RickMortyListInfoCopyWith<_$_RickMortyListInfo> get copyWith =>
      __$$_RickMortyListInfoCopyWithImpl<_$_RickMortyListInfo>(
          this, _$identity);
}

abstract class _RickMortyListInfo implements RickMortyListInfo {
  factory _RickMortyListInfo(
      {required final int count,
      required final int pages}) = _$_RickMortyListInfo;

  factory _RickMortyListInfo.fromJson(Map<String, dynamic> json) =
      _$_RickMortyListInfo.fromJson;

  @override
  int get count;
  @override
  int get pages;
  @override
  @JsonKey(ignore: true)
  _$$_RickMortyListInfoCopyWith<_$_RickMortyListInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

RickMortyListResult _$RickMortyListResultFromJson(Map<String, dynamic> json) {
  return _RickMortyListResult.fromJson(json);
}

/// @nodoc
mixin _$RickMortyListResult {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  ListStatus get status => throw _privateConstructorUsedError;
  ListGender get gender => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RickMortyListResultCopyWith<RickMortyListResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RickMortyListResultCopyWith<$Res> {
  factory $RickMortyListResultCopyWith(
          RickMortyListResult value, $Res Function(RickMortyListResult) then) =
      _$RickMortyListResultCopyWithImpl<$Res, RickMortyListResult>;
  @useResult
  $Res call(
      {String id,
      String name,
      String image,
      ListStatus status,
      ListGender gender});
}

/// @nodoc
class _$RickMortyListResultCopyWithImpl<$Res, $Val extends RickMortyListResult>
    implements $RickMortyListResultCopyWith<$Res> {
  _$RickMortyListResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? status = null,
    Object? gender = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ListStatus,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as ListGender,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RickMortyListResultCopyWith<$Res>
    implements $RickMortyListResultCopyWith<$Res> {
  factory _$$_RickMortyListResultCopyWith(_$_RickMortyListResult value,
          $Res Function(_$_RickMortyListResult) then) =
      __$$_RickMortyListResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String image,
      ListStatus status,
      ListGender gender});
}

/// @nodoc
class __$$_RickMortyListResultCopyWithImpl<$Res>
    extends _$RickMortyListResultCopyWithImpl<$Res, _$_RickMortyListResult>
    implements _$$_RickMortyListResultCopyWith<$Res> {
  __$$_RickMortyListResultCopyWithImpl(_$_RickMortyListResult _value,
      $Res Function(_$_RickMortyListResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? status = null,
    Object? gender = null,
  }) {
    return _then(_$_RickMortyListResult(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ListStatus,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as ListGender,
    ));
  }
}

/// @nodoc

@JsonSerializable(createToJson: false)
class _$_RickMortyListResult
    with DiagnosticableTreeMixin
    implements _RickMortyListResult {
  _$_RickMortyListResult(
      {required this.id,
      required this.name,
      required this.image,
      this.status = ListStatus.unknown,
      this.gender = ListGender.unknown});

  factory _$_RickMortyListResult.fromJson(Map<String, dynamic> json) =>
      _$$_RickMortyListResultFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String image;
  @override
  @JsonKey()
  final ListStatus status;
  @override
  @JsonKey()
  final ListGender gender;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RickMortyListResult(id: $id, name: $name, image: $image, status: $status, gender: $gender)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RickMortyListResult'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('gender', gender));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RickMortyListResult &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, status, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RickMortyListResultCopyWith<_$_RickMortyListResult> get copyWith =>
      __$$_RickMortyListResultCopyWithImpl<_$_RickMortyListResult>(
          this, _$identity);
}

abstract class _RickMortyListResult implements RickMortyListResult {
  factory _RickMortyListResult(
      {required final String id,
      required final String name,
      required final String image,
      final ListStatus status,
      final ListGender gender}) = _$_RickMortyListResult;

  factory _RickMortyListResult.fromJson(Map<String, dynamic> json) =
      _$_RickMortyListResult.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get image;
  @override
  ListStatus get status;
  @override
  ListGender get gender;
  @override
  @JsonKey(ignore: true)
  _$$_RickMortyListResultCopyWith<_$_RickMortyListResult> get copyWith =>
      throw _privateConstructorUsedError;
}
