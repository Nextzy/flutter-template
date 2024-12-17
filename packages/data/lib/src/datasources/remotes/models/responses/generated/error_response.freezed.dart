// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) {
  return _ErrorResponseResponse.fromJson(json);
}

/// @nodoc
mixin _$ErrorResponse {
  String? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get developerMessage => throw _privateConstructorUsedError;

  /// Serializes this ErrorResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorResponseCopyWith<ErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResponseCopyWith<$Res> {
  factory $ErrorResponseCopyWith(
          ErrorResponse value, $Res Function(ErrorResponse) then) =
      _$ErrorResponseCopyWithImpl<$Res, ErrorResponse>;
  @useResult
  $Res call({String? code, String? message, String? developerMessage});
}

/// @nodoc
class _$ErrorResponseCopyWithImpl<$Res, $Val extends ErrorResponse>
    implements $ErrorResponseCopyWith<$Res> {
  _$ErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? developerMessage = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      developerMessage: freezed == developerMessage
          ? _value.developerMessage
          : developerMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorResponseResponseImplCopyWith<$Res>
    implements $ErrorResponseCopyWith<$Res> {
  factory _$$ErrorResponseResponseImplCopyWith(
          _$ErrorResponseResponseImpl value,
          $Res Function(_$ErrorResponseResponseImpl) then) =
      __$$ErrorResponseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String? message, String? developerMessage});
}

/// @nodoc
class __$$ErrorResponseResponseImplCopyWithImpl<$Res>
    extends _$ErrorResponseCopyWithImpl<$Res, _$ErrorResponseResponseImpl>
    implements _$$ErrorResponseResponseImplCopyWith<$Res> {
  __$$ErrorResponseResponseImplCopyWithImpl(_$ErrorResponseResponseImpl _value,
      $Res Function(_$ErrorResponseResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? developerMessage = freezed,
  }) {
    return _then(_$ErrorResponseResponseImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      developerMessage: freezed == developerMessage
          ? _value.developerMessage
          : developerMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorResponseResponseImpl implements _ErrorResponseResponse {
  const _$ErrorResponseResponseImpl(
      {this.code, this.message, this.developerMessage});

  factory _$ErrorResponseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorResponseResponseImplFromJson(json);

  @override
  final String? code;
  @override
  final String? message;
  @override
  final String? developerMessage;

  @override
  String toString() {
    return 'ErrorResponse(code: $code, message: $message, developerMessage: $developerMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResponseResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.developerMessage, developerMessage) ||
                other.developerMessage == developerMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, developerMessage);

  /// Create a copy of ErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorResponseResponseImplCopyWith<_$ErrorResponseResponseImpl>
      get copyWith => __$$ErrorResponseResponseImplCopyWithImpl<
          _$ErrorResponseResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorResponseResponseImplToJson(
      this,
    );
  }
}

abstract class _ErrorResponseResponse implements ErrorResponse {
  const factory _ErrorResponseResponse(
      {final String? code,
      final String? message,
      final String? developerMessage}) = _$ErrorResponseResponseImpl;

  factory _ErrorResponseResponse.fromJson(Map<String, dynamic> json) =
      _$ErrorResponseResponseImpl.fromJson;

  @override
  String? get code;
  @override
  String? get message;
  @override
  String? get developerMessage;

  /// Create a copy of ErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorResponseResponseImplCopyWith<_$ErrorResponseResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
