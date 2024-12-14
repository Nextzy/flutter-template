// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../sign_in_with_email_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemoteSignInWithEmailBody _$RemoteSignInWithEmailBodyFromJson(
    Map<String, dynamic> json) {
  return _RemoteSignInWithEmailBody.fromJson(json);
}

/// @nodoc
mixin _$RemoteSignInWithEmailBody {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  /// Serializes this RemoteSignInWithEmailBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemoteSignInWithEmailBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoteSignInWithEmailBodyCopyWith<RemoteSignInWithEmailBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteSignInWithEmailBodyCopyWith<$Res> {
  factory $RemoteSignInWithEmailBodyCopyWith(RemoteSignInWithEmailBody value,
          $Res Function(RemoteSignInWithEmailBody) then) =
      _$RemoteSignInWithEmailBodyCopyWithImpl<$Res, RemoteSignInWithEmailBody>;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class _$RemoteSignInWithEmailBodyCopyWithImpl<$Res,
        $Val extends RemoteSignInWithEmailBody>
    implements $RemoteSignInWithEmailBodyCopyWith<$Res> {
  _$RemoteSignInWithEmailBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoteSignInWithEmailBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteSignInWithEmailBodyImplCopyWith<$Res>
    implements $RemoteSignInWithEmailBodyCopyWith<$Res> {
  factory _$$RemoteSignInWithEmailBodyImplCopyWith(
          _$RemoteSignInWithEmailBodyImpl value,
          $Res Function(_$RemoteSignInWithEmailBodyImpl) then) =
      __$$RemoteSignInWithEmailBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$$RemoteSignInWithEmailBodyImplCopyWithImpl<$Res>
    extends _$RemoteSignInWithEmailBodyCopyWithImpl<$Res,
        _$RemoteSignInWithEmailBodyImpl>
    implements _$$RemoteSignInWithEmailBodyImplCopyWith<$Res> {
  __$$RemoteSignInWithEmailBodyImplCopyWithImpl(
      _$RemoteSignInWithEmailBodyImpl _value,
      $Res Function(_$RemoteSignInWithEmailBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemoteSignInWithEmailBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$RemoteSignInWithEmailBodyImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoteSignInWithEmailBodyImpl implements _RemoteSignInWithEmailBody {
  const _$RemoteSignInWithEmailBodyImpl(
      {required this.email, required this.password});

  factory _$RemoteSignInWithEmailBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoteSignInWithEmailBodyImplFromJson(json);

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'RemoteSignInWithEmailBody(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteSignInWithEmailBodyImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of RemoteSignInWithEmailBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteSignInWithEmailBodyImplCopyWith<_$RemoteSignInWithEmailBodyImpl>
      get copyWith => __$$RemoteSignInWithEmailBodyImplCopyWithImpl<
          _$RemoteSignInWithEmailBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoteSignInWithEmailBodyImplToJson(
      this,
    );
  }
}

abstract class _RemoteSignInWithEmailBody implements RemoteSignInWithEmailBody {
  const factory _RemoteSignInWithEmailBody(
      {required final String? email,
      required final String? password}) = _$RemoteSignInWithEmailBodyImpl;

  factory _RemoteSignInWithEmailBody.fromJson(Map<String, dynamic> json) =
      _$RemoteSignInWithEmailBodyImpl.fromJson;

  @override
  String? get email;
  @override
  String? get password;

  /// Create a copy of RemoteSignInWithEmailBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoteSignInWithEmailBodyImplCopyWith<_$RemoteSignInWithEmailBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
