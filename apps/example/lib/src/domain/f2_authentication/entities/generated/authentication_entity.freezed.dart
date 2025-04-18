// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../authentication_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthenticationEntity {
  String get yourData;

  /// Create a copy of AuthenticationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthenticationEntityCopyWith<AuthenticationEntity> get copyWith =>
      _$AuthenticationEntityCopyWithImpl<AuthenticationEntity>(
          this as AuthenticationEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticationEntity &&
            (identical(other.yourData, yourData) ||
                other.yourData == yourData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, yourData);

  @override
  String toString() {
    return 'AuthenticationEntity(yourData: $yourData)';
  }
}

/// @nodoc
abstract mixin class $AuthenticationEntityCopyWith<$Res> {
  factory $AuthenticationEntityCopyWith(AuthenticationEntity value,
          $Res Function(AuthenticationEntity) _then) =
      _$AuthenticationEntityCopyWithImpl;
  @useResult
  $Res call({String yourData});
}

/// @nodoc
class _$AuthenticationEntityCopyWithImpl<$Res>
    implements $AuthenticationEntityCopyWith<$Res> {
  _$AuthenticationEntityCopyWithImpl(this._self, this._then);

  final AuthenticationEntity _self;
  final $Res Function(AuthenticationEntity) _then;

  /// Create a copy of AuthenticationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yourData = null,
  }) {
    return _then(_self.copyWith(
      yourData: null == yourData
          ? _self.yourData
          : yourData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _AuthenticationEntity implements AuthenticationEntity {
  const _AuthenticationEntity({required this.yourData});

  @override
  final String yourData;

  /// Create a copy of AuthenticationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthenticationEntityCopyWith<_AuthenticationEntity> get copyWith =>
      __$AuthenticationEntityCopyWithImpl<_AuthenticationEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthenticationEntity &&
            (identical(other.yourData, yourData) ||
                other.yourData == yourData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, yourData);

  @override
  String toString() {
    return 'AuthenticationEntity(yourData: $yourData)';
  }
}

/// @nodoc
abstract mixin class _$AuthenticationEntityCopyWith<$Res>
    implements $AuthenticationEntityCopyWith<$Res> {
  factory _$AuthenticationEntityCopyWith(_AuthenticationEntity value,
          $Res Function(_AuthenticationEntity) _then) =
      __$AuthenticationEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String yourData});
}

/// @nodoc
class __$AuthenticationEntityCopyWithImpl<$Res>
    implements _$AuthenticationEntityCopyWith<$Res> {
  __$AuthenticationEntityCopyWithImpl(this._self, this._then);

  final _AuthenticationEntity _self;
  final $Res Function(_AuthenticationEntity) _then;

  /// Create a copy of AuthenticationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? yourData = null,
  }) {
    return _then(_AuthenticationEntity(
      yourData: null == yourData
          ? _self.yourData
          : yourData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
