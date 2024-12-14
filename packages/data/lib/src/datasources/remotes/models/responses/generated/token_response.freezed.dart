// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemoteAuthenticationResponse _$RemoteAuthenticationResponseFromJson(
    Map<String, dynamic> json) {
  return _RemoteAuthenticationResponse.fromJson(json);
}

/// @nodoc
mixin _$RemoteAuthenticationResponse {
  String? get token => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this RemoteAuthenticationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoteAuthenticationResponseCopyWith<RemoteAuthenticationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteAuthenticationResponseCopyWith<$Res> {
  factory $RemoteAuthenticationResponseCopyWith(
          RemoteAuthenticationResponse value,
          $Res Function(RemoteAuthenticationResponse) then) =
      _$RemoteAuthenticationResponseCopyWithImpl<$Res,
          RemoteAuthenticationResponse>;
  @useResult
  $Res call({String? token, String? refreshToken});
}

/// @nodoc
class _$RemoteAuthenticationResponseCopyWithImpl<$Res,
        $Val extends RemoteAuthenticationResponse>
    implements $RemoteAuthenticationResponseCopyWith<$Res> {
  _$RemoteAuthenticationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteAuthenticationResponseImplCopyWith<$Res>
    implements $RemoteAuthenticationResponseCopyWith<$Res> {
  factory _$$RemoteAuthenticationResponseImplCopyWith(
          _$RemoteAuthenticationResponseImpl value,
          $Res Function(_$RemoteAuthenticationResponseImpl) then) =
      __$$RemoteAuthenticationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token, String? refreshToken});
}

/// @nodoc
class __$$RemoteAuthenticationResponseImplCopyWithImpl<$Res>
    extends _$RemoteAuthenticationResponseCopyWithImpl<$Res,
        _$RemoteAuthenticationResponseImpl>
    implements _$$RemoteAuthenticationResponseImplCopyWith<$Res> {
  __$$RemoteAuthenticationResponseImplCopyWithImpl(
      _$RemoteAuthenticationResponseImpl _value,
      $Res Function(_$RemoteAuthenticationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$RemoteAuthenticationResponseImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoteAuthenticationResponseImpl
    implements _RemoteAuthenticationResponse {
  const _$RemoteAuthenticationResponseImpl({this.token, this.refreshToken});

  factory _$RemoteAuthenticationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemoteAuthenticationResponseImplFromJson(json);

  @override
  final String? token;
  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'RemoteAuthenticationResponse(token: $token, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteAuthenticationResponseImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, refreshToken);

  /// Create a copy of RemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteAuthenticationResponseImplCopyWith<
          _$RemoteAuthenticationResponseImpl>
      get copyWith => __$$RemoteAuthenticationResponseImplCopyWithImpl<
          _$RemoteAuthenticationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoteAuthenticationResponseImplToJson(
      this,
    );
  }
}

abstract class _RemoteAuthenticationResponse
    implements RemoteAuthenticationResponse {
  const factory _RemoteAuthenticationResponse(
      {final String? token,
      final String? refreshToken}) = _$RemoteAuthenticationResponseImpl;

  factory _RemoteAuthenticationResponse.fromJson(Map<String, dynamic> json) =
      _$RemoteAuthenticationResponseImpl.fromJson;

  @override
  String? get token;
  @override
  String? get refreshToken;

  /// Create a copy of RemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoteAuthenticationResponseImplCopyWith<
          _$RemoteAuthenticationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
