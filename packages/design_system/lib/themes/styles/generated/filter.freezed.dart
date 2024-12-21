// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppImageFilter {
  double get sigmaX => throw _privateConstructorUsedError;
  double get sigmaY => throw _privateConstructorUsedError;
  TileMode get tileMode => throw _privateConstructorUsedError;

  /// Create a copy of AppImageFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppImageFilterCopyWith<AppImageFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppImageFilterCopyWith<$Res> {
  factory $AppImageFilterCopyWith(
          AppImageFilter value, $Res Function(AppImageFilter) then) =
      _$AppImageFilterCopyWithImpl<$Res, AppImageFilter>;
  @useResult
  $Res call({double sigmaX, double sigmaY, TileMode tileMode});
}

/// @nodoc
class _$AppImageFilterCopyWithImpl<$Res, $Val extends AppImageFilter>
    implements $AppImageFilterCopyWith<$Res> {
  _$AppImageFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppImageFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sigmaX = null,
    Object? sigmaY = null,
    Object? tileMode = null,
  }) {
    return _then(_value.copyWith(
      sigmaX: null == sigmaX
          ? _value.sigmaX
          : sigmaX // ignore: cast_nullable_to_non_nullable
              as double,
      sigmaY: null == sigmaY
          ? _value.sigmaY
          : sigmaY // ignore: cast_nullable_to_non_nullable
              as double,
      tileMode: null == tileMode
          ? _value.tileMode
          : tileMode // ignore: cast_nullable_to_non_nullable
              as TileMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppImageFilterImplCopyWith<$Res>
    implements $AppImageFilterCopyWith<$Res> {
  factory _$$AppImageFilterImplCopyWith(_$AppImageFilterImpl value,
          $Res Function(_$AppImageFilterImpl) then) =
      __$$AppImageFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double sigmaX, double sigmaY, TileMode tileMode});
}

/// @nodoc
class __$$AppImageFilterImplCopyWithImpl<$Res>
    extends _$AppImageFilterCopyWithImpl<$Res, _$AppImageFilterImpl>
    implements _$$AppImageFilterImplCopyWith<$Res> {
  __$$AppImageFilterImplCopyWithImpl(
      _$AppImageFilterImpl _value, $Res Function(_$AppImageFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppImageFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sigmaX = null,
    Object? sigmaY = null,
    Object? tileMode = null,
  }) {
    return _then(_$AppImageFilterImpl(
      sigmaX: null == sigmaX
          ? _value.sigmaX
          : sigmaX // ignore: cast_nullable_to_non_nullable
              as double,
      sigmaY: null == sigmaY
          ? _value.sigmaY
          : sigmaY // ignore: cast_nullable_to_non_nullable
              as double,
      tileMode: null == tileMode
          ? _value.tileMode
          : tileMode // ignore: cast_nullable_to_non_nullable
              as TileMode,
    ));
  }
}

/// @nodoc

class _$AppImageFilterImpl extends _AppImageFilter {
  const _$AppImageFilterImpl(
      {this.sigmaX = 0.0, this.sigmaY = 0.0, this.tileMode = TileMode.clamp})
      : super._();

  @override
  @JsonKey()
  final double sigmaX;
  @override
  @JsonKey()
  final double sigmaY;
  @override
  @JsonKey()
  final TileMode tileMode;

  @override
  String toString() {
    return 'AppImageFilter(sigmaX: $sigmaX, sigmaY: $sigmaY, tileMode: $tileMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppImageFilterImpl &&
            (identical(other.sigmaX, sigmaX) || other.sigmaX == sigmaX) &&
            (identical(other.sigmaY, sigmaY) || other.sigmaY == sigmaY) &&
            (identical(other.tileMode, tileMode) ||
                other.tileMode == tileMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sigmaX, sigmaY, tileMode);

  /// Create a copy of AppImageFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppImageFilterImplCopyWith<_$AppImageFilterImpl> get copyWith =>
      __$$AppImageFilterImplCopyWithImpl<_$AppImageFilterImpl>(
          this, _$identity);
}

abstract class _AppImageFilter extends AppImageFilter {
  const factory _AppImageFilter(
      {final double sigmaX,
      final double sigmaY,
      final TileMode tileMode}) = _$AppImageFilterImpl;
  const _AppImageFilter._() : super._();

  @override
  double get sigmaX;
  @override
  double get sigmaY;
  @override
  TileMode get tileMode;

  /// Create a copy of AppImageFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppImageFilterImplCopyWith<_$AppImageFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
