// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../e1_example_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieListEntity {
  Iterable<MovieEntity> get movieList;

  /// Create a copy of MovieListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieListEntityCopyWith<MovieListEntity> get copyWith =>
      _$MovieListEntityCopyWithImpl<MovieListEntity>(
          this as MovieListEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieListEntity &&
            const DeepCollectionEquality().equals(other.movieList, movieList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieList));

  @override
  String toString() {
    return 'MovieListEntity(movieList: $movieList)';
  }
}

/// @nodoc
abstract mixin class $MovieListEntityCopyWith<$Res> {
  factory $MovieListEntityCopyWith(
          MovieListEntity value, $Res Function(MovieListEntity) _then) =
      _$MovieListEntityCopyWithImpl;
  @useResult
  $Res call({Iterable<MovieEntity> movieList});
}

/// @nodoc
class _$MovieListEntityCopyWithImpl<$Res>
    implements $MovieListEntityCopyWith<$Res> {
  _$MovieListEntityCopyWithImpl(this._self, this._then);

  final MovieListEntity _self;
  final $Res Function(MovieListEntity) _then;

  /// Create a copy of MovieListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieList = null,
  }) {
    return _then(_self.copyWith(
      movieList: null == movieList
          ? _self.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as Iterable<MovieEntity>,
    ));
  }
}

/// @nodoc

class _MovieListEntity extends MovieListEntity {
  const _MovieListEntity({this.movieList = const []}) : super._();

  @override
  @JsonKey()
  final Iterable<MovieEntity> movieList;

  /// Create a copy of MovieListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieListEntityCopyWith<_MovieListEntity> get copyWith =>
      __$MovieListEntityCopyWithImpl<_MovieListEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieListEntity &&
            const DeepCollectionEquality().equals(other.movieList, movieList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieList));

  @override
  String toString() {
    return 'MovieListEntity(movieList: $movieList)';
  }
}

/// @nodoc
abstract mixin class _$MovieListEntityCopyWith<$Res>
    implements $MovieListEntityCopyWith<$Res> {
  factory _$MovieListEntityCopyWith(
          _MovieListEntity value, $Res Function(_MovieListEntity) _then) =
      __$MovieListEntityCopyWithImpl;
  @override
  @useResult
  $Res call({Iterable<MovieEntity> movieList});
}

/// @nodoc
class __$MovieListEntityCopyWithImpl<$Res>
    implements _$MovieListEntityCopyWith<$Res> {
  __$MovieListEntityCopyWithImpl(this._self, this._then);

  final _MovieListEntity _self;
  final $Res Function(_MovieListEntity) _then;

  /// Create a copy of MovieListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? movieList = null,
  }) {
    return _then(_MovieListEntity(
      movieList: null == movieList
          ? _self.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as Iterable<MovieEntity>,
    ));
  }
}

/// @nodoc
mixin _$MovieEntity {
  String get id;
  String get name;

  /// Create a copy of MovieEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieEntityCopyWith<MovieEntity> get copyWith =>
      _$MovieEntityCopyWithImpl<MovieEntity>(this as MovieEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'MovieEntity(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $MovieEntityCopyWith<$Res> {
  factory $MovieEntityCopyWith(
          MovieEntity value, $Res Function(MovieEntity) _then) =
      _$MovieEntityCopyWithImpl;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$MovieEntityCopyWithImpl<$Res> implements $MovieEntityCopyWith<$Res> {
  _$MovieEntityCopyWithImpl(this._self, this._then);

  final MovieEntity _self;
  final $Res Function(MovieEntity) _then;

  /// Create a copy of MovieEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _MovieEntity extends MovieEntity {
  const _MovieEntity({required this.id, required this.name}) : super._();

  @override
  final String id;
  @override
  final String name;

  /// Create a copy of MovieEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieEntityCopyWith<_MovieEntity> get copyWith =>
      __$MovieEntityCopyWithImpl<_MovieEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'MovieEntity(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$MovieEntityCopyWith<$Res>
    implements $MovieEntityCopyWith<$Res> {
  factory _$MovieEntityCopyWith(
          _MovieEntity value, $Res Function(_MovieEntity) _then) =
      __$MovieEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$MovieEntityCopyWithImpl<$Res> implements _$MovieEntityCopyWith<$Res> {
  __$MovieEntityCopyWithImpl(this._self, this._then);

  final _MovieEntity _self;
  final $Res Function(_MovieEntity) _then;

  /// Create a copy of MovieEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_MovieEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
