// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../d4_body_example.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExampleRemoteSignInWithEmailBody {
  String? get email;
  String? get password;

  /// Create a copy of ExampleRemoteSignInWithEmailBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExampleRemoteSignInWithEmailBodyCopyWith<ExampleRemoteSignInWithEmailBody>
      get copyWith => _$ExampleRemoteSignInWithEmailBodyCopyWithImpl<
              ExampleRemoteSignInWithEmailBody>(
          this as ExampleRemoteSignInWithEmailBody, _$identity);

  /// Serializes this ExampleRemoteSignInWithEmailBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExampleRemoteSignInWithEmailBody &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'ExampleRemoteSignInWithEmailBody(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $ExampleRemoteSignInWithEmailBodyCopyWith<$Res> {
  factory $ExampleRemoteSignInWithEmailBodyCopyWith(
          ExampleRemoteSignInWithEmailBody value,
          $Res Function(ExampleRemoteSignInWithEmailBody) _then) =
      _$ExampleRemoteSignInWithEmailBodyCopyWithImpl;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class _$ExampleRemoteSignInWithEmailBodyCopyWithImpl<$Res>
    implements $ExampleRemoteSignInWithEmailBodyCopyWith<$Res> {
  _$ExampleRemoteSignInWithEmailBodyCopyWithImpl(this._self, this._then);

  final ExampleRemoteSignInWithEmailBody _self;
  final $Res Function(ExampleRemoteSignInWithEmailBody) _then;

  /// Create a copy of ExampleRemoteSignInWithEmailBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_self.copyWith(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ExampleRemoteSignInWithEmailBody
    implements ExampleRemoteSignInWithEmailBody {
  const _ExampleRemoteSignInWithEmailBody(
      {required this.email, required this.password});
  factory _ExampleRemoteSignInWithEmailBody.fromJson(
          Map<String, dynamic> json) =>
      _$ExampleRemoteSignInWithEmailBodyFromJson(json);

  @override
  final String? email;
  @override
  final String? password;

  /// Create a copy of ExampleRemoteSignInWithEmailBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExampleRemoteSignInWithEmailBodyCopyWith<_ExampleRemoteSignInWithEmailBody>
      get copyWith => __$ExampleRemoteSignInWithEmailBodyCopyWithImpl<
          _ExampleRemoteSignInWithEmailBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExampleRemoteSignInWithEmailBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExampleRemoteSignInWithEmailBody &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'ExampleRemoteSignInWithEmailBody(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$ExampleRemoteSignInWithEmailBodyCopyWith<$Res>
    implements $ExampleRemoteSignInWithEmailBodyCopyWith<$Res> {
  factory _$ExampleRemoteSignInWithEmailBodyCopyWith(
          _ExampleRemoteSignInWithEmailBody value,
          $Res Function(_ExampleRemoteSignInWithEmailBody) _then) =
      __$ExampleRemoteSignInWithEmailBodyCopyWithImpl;
  @override
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$ExampleRemoteSignInWithEmailBodyCopyWithImpl<$Res>
    implements _$ExampleRemoteSignInWithEmailBodyCopyWith<$Res> {
  __$ExampleRemoteSignInWithEmailBodyCopyWithImpl(this._self, this._then);

  final _ExampleRemoteSignInWithEmailBody _self;
  final $Res Function(_ExampleRemoteSignInWithEmailBody) _then;

  /// Create a copy of ExampleRemoteSignInWithEmailBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_ExampleRemoteSignInWithEmailBody(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
