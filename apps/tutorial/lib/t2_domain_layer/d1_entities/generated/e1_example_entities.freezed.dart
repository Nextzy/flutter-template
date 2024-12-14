// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../e1_example_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieListEntity {
  Iterable<MovieEntity> get movieList => throw _privateConstructorUsedError;

  /// Create a copy of MovieListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieListEntityCopyWith<MovieListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListEntityCopyWith<$Res> {
  factory $MovieListEntityCopyWith(
          MovieListEntity value, $Res Function(MovieListEntity) then) =
      _$MovieListEntityCopyWithImpl<$Res, MovieListEntity>;
  @useResult
  $Res call({Iterable<MovieEntity> movieList});
}

/// @nodoc
class _$MovieListEntityCopyWithImpl<$Res, $Val extends MovieListEntity>
    implements $MovieListEntityCopyWith<$Res> {
  _$MovieListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieList = null,
  }) {
    return _then(_value.copyWith(
      movieList: null == movieList
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as Iterable<MovieEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieListEntityImplCopyWith<$Res>
    implements $MovieListEntityCopyWith<$Res> {
  factory _$$MovieListEntityImplCopyWith(_$MovieListEntityImpl value,
          $Res Function(_$MovieListEntityImpl) then) =
      __$$MovieListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Iterable<MovieEntity> movieList});
}

/// @nodoc
class __$$MovieListEntityImplCopyWithImpl<$Res>
    extends _$MovieListEntityCopyWithImpl<$Res, _$MovieListEntityImpl>
    implements _$$MovieListEntityImplCopyWith<$Res> {
  __$$MovieListEntityImplCopyWithImpl(
      _$MovieListEntityImpl _value, $Res Function(_$MovieListEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieList = null,
  }) {
    return _then(_$MovieListEntityImpl(
      movieList: null == movieList
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as Iterable<MovieEntity>,
    ));
  }
}

/// @nodoc

class _$MovieListEntityImpl extends _MovieListEntity {
  const _$MovieListEntityImpl({this.movieList = const []}) : super._();

  @override
  @JsonKey()
  final Iterable<MovieEntity> movieList;

  @override
  String toString() {
    return 'MovieListEntity(movieList: $movieList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieListEntityImpl &&
            const DeepCollectionEquality().equals(other.movieList, movieList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieList));

  /// Create a copy of MovieListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListEntityImplCopyWith<_$MovieListEntityImpl> get copyWith =>
      __$$MovieListEntityImplCopyWithImpl<_$MovieListEntityImpl>(
          this, _$identity);
}

abstract class _MovieListEntity extends MovieListEntity {
  const factory _MovieListEntity({final Iterable<MovieEntity> movieList}) =
      _$MovieListEntityImpl;
  const _MovieListEntity._() : super._();

  @override
  Iterable<MovieEntity> get movieList;

  /// Create a copy of MovieListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieListEntityImplCopyWith<_$MovieListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of MovieEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieEntityCopyWith<MovieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieEntityCopyWith<$Res> {
  factory $MovieEntityCopyWith(
          MovieEntity value, $Res Function(MovieEntity) then) =
      _$MovieEntityCopyWithImpl<$Res, MovieEntity>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$MovieEntityCopyWithImpl<$Res, $Val extends MovieEntity>
    implements $MovieEntityCopyWith<$Res> {
  _$MovieEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieEntityImplCopyWith<$Res>
    implements $MovieEntityCopyWith<$Res> {
  factory _$$MovieEntityImplCopyWith(
          _$MovieEntityImpl value, $Res Function(_$MovieEntityImpl) then) =
      __$$MovieEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$MovieEntityImplCopyWithImpl<$Res>
    extends _$MovieEntityCopyWithImpl<$Res, _$MovieEntityImpl>
    implements _$$MovieEntityImplCopyWith<$Res> {
  __$$MovieEntityImplCopyWithImpl(
      _$MovieEntityImpl _value, $Res Function(_$MovieEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$MovieEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieEntityImpl extends _MovieEntity {
  const _$MovieEntityImpl({required this.id, required this.name}) : super._();

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'MovieEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of MovieEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieEntityImplCopyWith<_$MovieEntityImpl> get copyWith =>
      __$$MovieEntityImplCopyWithImpl<_$MovieEntityImpl>(this, _$identity);
}

abstract class _MovieEntity extends MovieEntity {
  const factory _MovieEntity(
      {required final String id,
      required final String name}) = _$MovieEntityImpl;
  const _MovieEntity._() : super._();

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of MovieEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieEntityImplCopyWith<_$MovieEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
