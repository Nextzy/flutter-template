// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../response_copy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

YourResponse _$YourResponseFromJson(Map<String, dynamic> json) {
  return _YourResponse.fromJson(json);
}

/// @nodoc
mixin _$YourResponse {
  String get data => throw _privateConstructorUsedError;
  List<String> get dataList => throw _privateConstructorUsedError;

  /// Serializes this YourResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of YourResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YourResponseCopyWith<YourResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YourResponseCopyWith<$Res> {
  factory $YourResponseCopyWith(
          YourResponse value, $Res Function(YourResponse) then) =
      _$YourResponseCopyWithImpl<$Res, YourResponse>;
  @useResult
  $Res call({String data, List<String> dataList});
}

/// @nodoc
class _$YourResponseCopyWithImpl<$Res, $Val extends YourResponse>
    implements $YourResponseCopyWith<$Res> {
  _$YourResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YourResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? dataList = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      dataList: null == dataList
          ? _value.dataList
          : dataList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YourResponseImplCopyWith<$Res>
    implements $YourResponseCopyWith<$Res> {
  factory _$$YourResponseImplCopyWith(
          _$YourResponseImpl value, $Res Function(_$YourResponseImpl) then) =
      __$$YourResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, List<String> dataList});
}

/// @nodoc
class __$$YourResponseImplCopyWithImpl<$Res>
    extends _$YourResponseCopyWithImpl<$Res, _$YourResponseImpl>
    implements _$$YourResponseImplCopyWith<$Res> {
  __$$YourResponseImplCopyWithImpl(
      _$YourResponseImpl _value, $Res Function(_$YourResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of YourResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? dataList = null,
  }) {
    return _then(_$YourResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      dataList: null == dataList
          ? _value._dataList
          : dataList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YourResponseImpl implements _YourResponse {
  const _$YourResponseImpl(
      {required this.data, required final List<String> dataList})
      : _dataList = dataList;

  factory _$YourResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$YourResponseImplFromJson(json);

  @override
  final String data;
  final List<String> _dataList;
  @override
  List<String> get dataList {
    if (_dataList is EqualUnmodifiableListView) return _dataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataList);
  }

  @override
  String toString() {
    return 'YourResponse(data: $data, dataList: $dataList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YourResponseImpl &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other._dataList, _dataList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, data, const DeepCollectionEquality().hash(_dataList));

  /// Create a copy of YourResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YourResponseImplCopyWith<_$YourResponseImpl> get copyWith =>
      __$$YourResponseImplCopyWithImpl<_$YourResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YourResponseImplToJson(
      this,
    );
  }
}

abstract class _YourResponse implements YourResponse {
  const factory _YourResponse(
      {required final String data,
      required final List<String> dataList}) = _$YourResponseImpl;

  factory _YourResponse.fromJson(Map<String, dynamic> json) =
      _$YourResponseImpl.fromJson;

  @override
  String get data;
  @override
  List<String> get dataList;

  /// Create a copy of YourResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YourResponseImplCopyWith<_$YourResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
