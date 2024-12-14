// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../movie_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemoteMovieListResponse _$RemoteMovieListResponseFromJson(
    Map<String, dynamic> json) {
  return _RemoteMovieListResponse.fromJson(json);
}

/// @nodoc
mixin _$RemoteMovieListResponse {
  List<RemoteMovie>? get data => throw _privateConstructorUsedError;

  /// Serializes this RemoteMovieListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemoteMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoteMovieListResponseCopyWith<RemoteMovieListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteMovieListResponseCopyWith<$Res> {
  factory $RemoteMovieListResponseCopyWith(RemoteMovieListResponse value,
          $Res Function(RemoteMovieListResponse) then) =
      _$RemoteMovieListResponseCopyWithImpl<$Res, RemoteMovieListResponse>;
  @useResult
  $Res call({List<RemoteMovie>? data});
}

/// @nodoc
class _$RemoteMovieListResponseCopyWithImpl<$Res,
        $Val extends RemoteMovieListResponse>
    implements $RemoteMovieListResponseCopyWith<$Res> {
  _$RemoteMovieListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoteMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RemoteMovie>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteMovieListResponseImplCopyWith<$Res>
    implements $RemoteMovieListResponseCopyWith<$Res> {
  factory _$$RemoteMovieListResponseImplCopyWith(
          _$RemoteMovieListResponseImpl value,
          $Res Function(_$RemoteMovieListResponseImpl) then) =
      __$$RemoteMovieListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RemoteMovie>? data});
}

/// @nodoc
class __$$RemoteMovieListResponseImplCopyWithImpl<$Res>
    extends _$RemoteMovieListResponseCopyWithImpl<$Res,
        _$RemoteMovieListResponseImpl>
    implements _$$RemoteMovieListResponseImplCopyWith<$Res> {
  __$$RemoteMovieListResponseImplCopyWithImpl(
      _$RemoteMovieListResponseImpl _value,
      $Res Function(_$RemoteMovieListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemoteMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RemoteMovieListResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RemoteMovie>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoteMovieListResponseImpl implements _RemoteMovieListResponse {
  const _$RemoteMovieListResponseImpl({final List<RemoteMovie>? data})
      : _data = data;

  factory _$RemoteMovieListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoteMovieListResponseImplFromJson(json);

  final List<RemoteMovie>? _data;
  @override
  List<RemoteMovie>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RemoteMovieListResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteMovieListResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of RemoteMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteMovieListResponseImplCopyWith<_$RemoteMovieListResponseImpl>
      get copyWith => __$$RemoteMovieListResponseImplCopyWithImpl<
          _$RemoteMovieListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoteMovieListResponseImplToJson(
      this,
    );
  }
}

abstract class _RemoteMovieListResponse implements RemoteMovieListResponse {
  const factory _RemoteMovieListResponse({final List<RemoteMovie>? data}) =
      _$RemoteMovieListResponseImpl;

  factory _RemoteMovieListResponse.fromJson(Map<String, dynamic> json) =
      _$RemoteMovieListResponseImpl.fromJson;

  @override
  List<RemoteMovie>? get data;

  /// Create a copy of RemoteMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoteMovieListResponseImplCopyWith<_$RemoteMovieListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemoteMovie _$RemoteMovieFromJson(Map<String, dynamic> json) {
  return _RemoteMovie.fromJson(json);
}

/// @nodoc
mixin _$RemoteMovie {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this RemoteMovie to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemoteMovie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoteMovieCopyWith<RemoteMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteMovieCopyWith<$Res> {
  factory $RemoteMovieCopyWith(
          RemoteMovie value, $Res Function(RemoteMovie) then) =
      _$RemoteMovieCopyWithImpl<$Res, RemoteMovie>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$RemoteMovieCopyWithImpl<$Res, $Val extends RemoteMovie>
    implements $RemoteMovieCopyWith<$Res> {
  _$RemoteMovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoteMovie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteMovieImplCopyWith<$Res>
    implements $RemoteMovieCopyWith<$Res> {
  factory _$$RemoteMovieImplCopyWith(
          _$RemoteMovieImpl value, $Res Function(_$RemoteMovieImpl) then) =
      __$$RemoteMovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$RemoteMovieImplCopyWithImpl<$Res>
    extends _$RemoteMovieCopyWithImpl<$Res, _$RemoteMovieImpl>
    implements _$$RemoteMovieImplCopyWith<$Res> {
  __$$RemoteMovieImplCopyWithImpl(
      _$RemoteMovieImpl _value, $Res Function(_$RemoteMovieImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemoteMovie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$RemoteMovieImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoteMovieImpl implements _RemoteMovie {
  const _$RemoteMovieImpl({this.id, this.name});

  factory _$RemoteMovieImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoteMovieImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'RemoteMovie(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteMovieImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of RemoteMovie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteMovieImplCopyWith<_$RemoteMovieImpl> get copyWith =>
      __$$RemoteMovieImplCopyWithImpl<_$RemoteMovieImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoteMovieImplToJson(
      this,
    );
  }
}

abstract class _RemoteMovie implements RemoteMovie {
  const factory _RemoteMovie({final String? id, final String? name}) =
      _$RemoteMovieImpl;

  factory _RemoteMovie.fromJson(Map<String, dynamic> json) =
      _$RemoteMovieImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;

  /// Create a copy of RemoteMovie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoteMovieImplCopyWith<_$RemoteMovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
