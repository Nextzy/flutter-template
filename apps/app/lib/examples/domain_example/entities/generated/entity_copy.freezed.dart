// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../entity_copy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

YourEntity _$YourEntityFromJson(Map<String, dynamic> json) {
  return _YourEntity.fromJson(json);
}

/// @nodoc
mixin _$YourEntity {
  String get yourData => throw _privateConstructorUsedError;

  /// Serializes this YourEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of YourEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YourEntityCopyWith<YourEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YourEntityCopyWith<$Res> {
  factory $YourEntityCopyWith(
          YourEntity value, $Res Function(YourEntity) then) =
      _$YourEntityCopyWithImpl<$Res, YourEntity>;
  @useResult
  $Res call({String yourData});
}

/// @nodoc
class _$YourEntityCopyWithImpl<$Res, $Val extends YourEntity>
    implements $YourEntityCopyWith<$Res> {
  _$YourEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YourEntity
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
abstract class _$$YourEntityImplCopyWith<$Res>
    implements $YourEntityCopyWith<$Res> {
  factory _$$YourEntityImplCopyWith(
          _$YourEntityImpl value, $Res Function(_$YourEntityImpl) then) =
      __$$YourEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String yourData});
}

/// @nodoc
class __$$YourEntityImplCopyWithImpl<$Res>
    extends _$YourEntityCopyWithImpl<$Res, _$YourEntityImpl>
    implements _$$YourEntityImplCopyWith<$Res> {
  __$$YourEntityImplCopyWithImpl(
      _$YourEntityImpl _value, $Res Function(_$YourEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of YourEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yourData = null,
  }) {
    return _then(_$YourEntityImpl(
      yourData: null == yourData
          ? _value.yourData
          : yourData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YourEntityImpl implements _YourEntity {
  const _$YourEntityImpl({required this.yourData});

  factory _$YourEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$YourEntityImplFromJson(json);

  @override
  final String yourData;

  @override
  String toString() {
    return 'YourEntity(yourData: $yourData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YourEntityImpl &&
            (identical(other.yourData, yourData) ||
                other.yourData == yourData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, yourData);

  /// Create a copy of YourEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YourEntityImplCopyWith<_$YourEntityImpl> get copyWith =>
      __$$YourEntityImplCopyWithImpl<_$YourEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YourEntityImplToJson(
      this,
    );
  }
}

abstract class _YourEntity implements YourEntity {
  const factory _YourEntity({required final String yourData}) =
      _$YourEntityImpl;

  factory _YourEntity.fromJson(Map<String, dynamic> json) =
      _$YourEntityImpl.fromJson;

  @override
  String get yourData;

  /// Create a copy of YourEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YourEntityImplCopyWith<_$YourEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
