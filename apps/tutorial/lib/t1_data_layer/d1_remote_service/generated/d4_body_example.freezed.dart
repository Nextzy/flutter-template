// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../d4_body_example.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExampleRemoteSignInWithEmailBody _$ExampleRemoteSignInWithEmailBodyFromJson(
    Map<String, dynamic> json) {
  return _ExampleRemoteSignInWithEmailBody.fromJson(json);
}

/// @nodoc
mixin _$ExampleRemoteSignInWithEmailBody {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  /// Serializes this ExampleRemoteSignInWithEmailBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExampleRemoteSignInWithEmailBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExampleRemoteSignInWithEmailBodyCopyWith<ExampleRemoteSignInWithEmailBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleRemoteSignInWithEmailBodyCopyWith<$Res> {
  factory $ExampleRemoteSignInWithEmailBodyCopyWith(
          ExampleRemoteSignInWithEmailBody value,
          $Res Function(ExampleRemoteSignInWithEmailBody) then) =
      _$ExampleRemoteSignInWithEmailBodyCopyWithImpl<$Res,
          ExampleRemoteSignInWithEmailBody>;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class _$ExampleRemoteSignInWithEmailBodyCopyWithImpl<$Res,
        $Val extends ExampleRemoteSignInWithEmailBody>
    implements $ExampleRemoteSignInWithEmailBodyCopyWith<$Res> {
  _$ExampleRemoteSignInWithEmailBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExampleRemoteSignInWithEmailBody
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
abstract class _$$ExampleRemoteSignInWithEmailBodyImplCopyWith<$Res>
    implements $ExampleRemoteSignInWithEmailBodyCopyWith<$Res> {
  factory _$$ExampleRemoteSignInWithEmailBodyImplCopyWith(
          _$ExampleRemoteSignInWithEmailBodyImpl value,
          $Res Function(_$ExampleRemoteSignInWithEmailBodyImpl) then) =
      __$$ExampleRemoteSignInWithEmailBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$$ExampleRemoteSignInWithEmailBodyImplCopyWithImpl<$Res>
    extends _$ExampleRemoteSignInWithEmailBodyCopyWithImpl<$Res,
        _$ExampleRemoteSignInWithEmailBodyImpl>
    implements _$$ExampleRemoteSignInWithEmailBodyImplCopyWith<$Res> {
  __$$ExampleRemoteSignInWithEmailBodyImplCopyWithImpl(
      _$ExampleRemoteSignInWithEmailBodyImpl _value,
      $Res Function(_$ExampleRemoteSignInWithEmailBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExampleRemoteSignInWithEmailBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$ExampleRemoteSignInWithEmailBodyImpl(
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
class _$ExampleRemoteSignInWithEmailBodyImpl
    implements _ExampleRemoteSignInWithEmailBody {
  const _$ExampleRemoteSignInWithEmailBodyImpl(
      {required this.email, required this.password});

  factory _$ExampleRemoteSignInWithEmailBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ExampleRemoteSignInWithEmailBodyImplFromJson(json);

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'ExampleRemoteSignInWithEmailBody(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleRemoteSignInWithEmailBodyImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of ExampleRemoteSignInWithEmailBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleRemoteSignInWithEmailBodyImplCopyWith<
          _$ExampleRemoteSignInWithEmailBodyImpl>
      get copyWith => __$$ExampleRemoteSignInWithEmailBodyImplCopyWithImpl<
          _$ExampleRemoteSignInWithEmailBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExampleRemoteSignInWithEmailBodyImplToJson(
      this,
    );
  }
}

abstract class _ExampleRemoteSignInWithEmailBody
    implements ExampleRemoteSignInWithEmailBody {
  const factory _ExampleRemoteSignInWithEmailBody(
          {required final String? email, required final String? password}) =
      _$ExampleRemoteSignInWithEmailBodyImpl;

  factory _ExampleRemoteSignInWithEmailBody.fromJson(
          Map<String, dynamic> json) =
      _$ExampleRemoteSignInWithEmailBodyImpl.fromJson;

  @override
  String? get email;
  @override
  String? get password;

  /// Create a copy of ExampleRemoteSignInWithEmailBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExampleRemoteSignInWithEmailBodyImplCopyWith<
          _$ExampleRemoteSignInWithEmailBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
