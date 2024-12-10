// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../body_copy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

YourBody _$YourBodyFromJson(Map<String, dynamic> json) {
  return _YourBody.fromJson(json);
}

/// @nodoc
mixin _$YourBody {
  String get data => throw _privateConstructorUsedError;

  /// Serializes this YourBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of YourBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YourBodyCopyWith<YourBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YourBodyCopyWith<$Res> {
  factory $YourBodyCopyWith(YourBody value, $Res Function(YourBody) then) =
      _$YourBodyCopyWithImpl<$Res, YourBody>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class _$YourBodyCopyWithImpl<$Res, $Val extends YourBody>
    implements $YourBodyCopyWith<$Res> {
  _$YourBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YourBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YourBodyImplCopyWith<$Res>
    implements $YourBodyCopyWith<$Res> {
  factory _$$YourBodyImplCopyWith(
          _$YourBodyImpl value, $Res Function(_$YourBodyImpl) then) =
      __$$YourBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$YourBodyImplCopyWithImpl<$Res>
    extends _$YourBodyCopyWithImpl<$Res, _$YourBodyImpl>
    implements _$$YourBodyImplCopyWith<$Res> {
  __$$YourBodyImplCopyWithImpl(
      _$YourBodyImpl _value, $Res Function(_$YourBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of YourBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$YourBodyImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YourBodyImpl implements _YourBody {
  const _$YourBodyImpl({required this.data});

  factory _$YourBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$YourBodyImplFromJson(json);

  @override
  final String data;

  @override
  String toString() {
    return 'YourBody(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YourBodyImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of YourBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YourBodyImplCopyWith<_$YourBodyImpl> get copyWith =>
      __$$YourBodyImplCopyWithImpl<_$YourBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YourBodyImplToJson(
      this,
    );
  }
}

abstract class _YourBody implements YourBody {
  const factory _YourBody({required final String data}) = _$YourBodyImpl;

  factory _YourBody.fromJson(Map<String, dynamic> json) =
      _$YourBodyImpl.fromJson;

  @override
  String get data;

  /// Create a copy of YourBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YourBodyImplCopyWith<_$YourBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
