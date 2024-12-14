// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../home_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEntity {
  String get yourData => throw _privateConstructorUsedError;

  /// Create a copy of HomeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeEntityCopyWith<HomeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEntityCopyWith<$Res> {
  factory $HomeEntityCopyWith(
          HomeEntity value, $Res Function(HomeEntity) then) =
      _$HomeEntityCopyWithImpl<$Res, HomeEntity>;
  @useResult
  $Res call({String yourData});
}

/// @nodoc
class _$HomeEntityCopyWithImpl<$Res, $Val extends HomeEntity>
    implements $HomeEntityCopyWith<$Res> {
  _$HomeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yourData = null,
  }) {
    return _then(_value.copyWith(
      yourData: null == yourData
          ? _value.yourData
          : yourData // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeEntityImplCopyWith<$Res>
    implements $HomeEntityCopyWith<$Res> {
  factory _$$HomeEntityImplCopyWith(
          _$HomeEntityImpl value, $Res Function(_$HomeEntityImpl) then) =
      __$$HomeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String yourData});
}

/// @nodoc
class __$$HomeEntityImplCopyWithImpl<$Res>
    extends _$HomeEntityCopyWithImpl<$Res, _$HomeEntityImpl>
    implements _$$HomeEntityImplCopyWith<$Res> {
  __$$HomeEntityImplCopyWithImpl(
      _$HomeEntityImpl _value, $Res Function(_$HomeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yourData = null,
  }) {
    return _then(_$HomeEntityImpl(
      yourData: null == yourData
          ? _value.yourData
          : yourData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeEntityImpl implements _HomeEntity {
  const _$HomeEntityImpl({required this.yourData});

  @override
  final String yourData;

  @override
  String toString() {
    return 'HomeEntity(yourData: $yourData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEntityImpl &&
            (identical(other.yourData, yourData) ||
                other.yourData == yourData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, yourData);

  /// Create a copy of HomeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEntityImplCopyWith<_$HomeEntityImpl> get copyWith =>
      __$$HomeEntityImplCopyWithImpl<_$HomeEntityImpl>(this, _$identity);
}

abstract class _HomeEntity implements HomeEntity {
  const factory _HomeEntity({required final String yourData}) =
      _$HomeEntityImpl;

  @override
  String get yourData;

  /// Create a copy of HomeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeEntityImplCopyWith<_$HomeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
