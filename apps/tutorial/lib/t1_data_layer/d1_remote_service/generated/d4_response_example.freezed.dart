// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../d4_response_example.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExampleRemoteAuthenticationResponse
    _$ExampleRemoteAuthenticationResponseFromJson(Map<String, dynamic> json) {
  return _ExampleRemoteAuthenticationResponse.fromJson(json);
}

/// @nodoc
mixin _$ExampleRemoteAuthenticationResponse {
  String? get token => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this ExampleRemoteAuthenticationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExampleRemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExampleRemoteAuthenticationResponseCopyWith<
          ExampleRemoteAuthenticationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleRemoteAuthenticationResponseCopyWith<$Res> {
  factory $ExampleRemoteAuthenticationResponseCopyWith(
          ExampleRemoteAuthenticationResponse value,
          $Res Function(ExampleRemoteAuthenticationResponse) then) =
      _$ExampleRemoteAuthenticationResponseCopyWithImpl<$Res,
          ExampleRemoteAuthenticationResponse>;
  @useResult
  $Res call({String? token, String? refreshToken});
}

/// @nodoc
class _$ExampleRemoteAuthenticationResponseCopyWithImpl<$Res,
        $Val extends ExampleRemoteAuthenticationResponse>
    implements $ExampleRemoteAuthenticationResponseCopyWith<$Res> {
  _$ExampleRemoteAuthenticationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExampleRemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExampleRemoteAuthenticationResponseImplCopyWith<$Res>
    implements $ExampleRemoteAuthenticationResponseCopyWith<$Res> {
  factory _$$ExampleRemoteAuthenticationResponseImplCopyWith(
          _$ExampleRemoteAuthenticationResponseImpl value,
          $Res Function(_$ExampleRemoteAuthenticationResponseImpl) then) =
      __$$ExampleRemoteAuthenticationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token, String? refreshToken});
}

/// @nodoc
class __$$ExampleRemoteAuthenticationResponseImplCopyWithImpl<$Res>
    extends _$ExampleRemoteAuthenticationResponseCopyWithImpl<$Res,
        _$ExampleRemoteAuthenticationResponseImpl>
    implements _$$ExampleRemoteAuthenticationResponseImplCopyWith<$Res> {
  __$$ExampleRemoteAuthenticationResponseImplCopyWithImpl(
      _$ExampleRemoteAuthenticationResponseImpl _value,
      $Res Function(_$ExampleRemoteAuthenticationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExampleRemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$ExampleRemoteAuthenticationResponseImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExampleRemoteAuthenticationResponseImpl
    implements _ExampleRemoteAuthenticationResponse {
  const _$ExampleRemoteAuthenticationResponseImpl(
      {this.token, this.refreshToken});

  factory _$ExampleRemoteAuthenticationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ExampleRemoteAuthenticationResponseImplFromJson(json);

  @override
  final String? token;
  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'ExampleRemoteAuthenticationResponse(token: $token, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleRemoteAuthenticationResponseImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, refreshToken);

  /// Create a copy of ExampleRemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleRemoteAuthenticationResponseImplCopyWith<
          _$ExampleRemoteAuthenticationResponseImpl>
      get copyWith => __$$ExampleRemoteAuthenticationResponseImplCopyWithImpl<
          _$ExampleRemoteAuthenticationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExampleRemoteAuthenticationResponseImplToJson(
      this,
    );
  }
}

abstract class _ExampleRemoteAuthenticationResponse
    implements ExampleRemoteAuthenticationResponse {
  const factory _ExampleRemoteAuthenticationResponse(
      {final String? token,
      final String? refreshToken}) = _$ExampleRemoteAuthenticationResponseImpl;

  factory _ExampleRemoteAuthenticationResponse.fromJson(
          Map<String, dynamic> json) =
      _$ExampleRemoteAuthenticationResponseImpl.fromJson;

  @override
  String? get token;
  @override
  String? get refreshToken;

  /// Create a copy of ExampleRemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExampleRemoteAuthenticationResponseImplCopyWith<
          _$ExampleRemoteAuthenticationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExampleRemoteMovieListResponse _$ExampleRemoteMovieListResponseFromJson(
    Map<String, dynamic> json) {
  return _ExampleRemoteMovieListResponse.fromJson(json);
}

/// @nodoc
mixin _$ExampleRemoteMovieListResponse {
  List<ExampleRemoteMovie>? get data => throw _privateConstructorUsedError;

  /// Serializes this ExampleRemoteMovieListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExampleRemoteMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExampleRemoteMovieListResponseCopyWith<ExampleRemoteMovieListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleRemoteMovieListResponseCopyWith<$Res> {
  factory $ExampleRemoteMovieListResponseCopyWith(
          ExampleRemoteMovieListResponse value,
          $Res Function(ExampleRemoteMovieListResponse) then) =
      _$ExampleRemoteMovieListResponseCopyWithImpl<$Res,
          ExampleRemoteMovieListResponse>;
  @useResult
  $Res call({List<ExampleRemoteMovie>? data});
}

/// @nodoc
class _$ExampleRemoteMovieListResponseCopyWithImpl<$Res,
        $Val extends ExampleRemoteMovieListResponse>
    implements $ExampleRemoteMovieListResponseCopyWith<$Res> {
  _$ExampleRemoteMovieListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExampleRemoteMovieListResponse
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
              as List<ExampleRemoteMovie>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExampleRemoteMovieListResponseImplCopyWith<$Res>
    implements $ExampleRemoteMovieListResponseCopyWith<$Res> {
  factory _$$ExampleRemoteMovieListResponseImplCopyWith(
          _$ExampleRemoteMovieListResponseImpl value,
          $Res Function(_$ExampleRemoteMovieListResponseImpl) then) =
      __$$ExampleRemoteMovieListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ExampleRemoteMovie>? data});
}

/// @nodoc
class __$$ExampleRemoteMovieListResponseImplCopyWithImpl<$Res>
    extends _$ExampleRemoteMovieListResponseCopyWithImpl<$Res,
        _$ExampleRemoteMovieListResponseImpl>
    implements _$$ExampleRemoteMovieListResponseImplCopyWith<$Res> {
  __$$ExampleRemoteMovieListResponseImplCopyWithImpl(
      _$ExampleRemoteMovieListResponseImpl _value,
      $Res Function(_$ExampleRemoteMovieListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExampleRemoteMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ExampleRemoteMovieListResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ExampleRemoteMovie>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExampleRemoteMovieListResponseImpl
    implements _ExampleRemoteMovieListResponse {
  const _$ExampleRemoteMovieListResponseImpl(
      {final List<ExampleRemoteMovie>? data})
      : _data = data;

  factory _$ExampleRemoteMovieListResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ExampleRemoteMovieListResponseImplFromJson(json);

  final List<ExampleRemoteMovie>? _data;
  @override
  List<ExampleRemoteMovie>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ExampleRemoteMovieListResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleRemoteMovieListResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ExampleRemoteMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleRemoteMovieListResponseImplCopyWith<
          _$ExampleRemoteMovieListResponseImpl>
      get copyWith => __$$ExampleRemoteMovieListResponseImplCopyWithImpl<
          _$ExampleRemoteMovieListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExampleRemoteMovieListResponseImplToJson(
      this,
    );
  }
}

abstract class _ExampleRemoteMovieListResponse
    implements ExampleRemoteMovieListResponse {
  const factory _ExampleRemoteMovieListResponse(
          {final List<ExampleRemoteMovie>? data}) =
      _$ExampleRemoteMovieListResponseImpl;

  factory _ExampleRemoteMovieListResponse.fromJson(Map<String, dynamic> json) =
      _$ExampleRemoteMovieListResponseImpl.fromJson;

  @override
  List<ExampleRemoteMovie>? get data;

  /// Create a copy of ExampleRemoteMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExampleRemoteMovieListResponseImplCopyWith<
          _$ExampleRemoteMovieListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExampleRemoteMovie _$ExampleRemoteMovieFromJson(Map<String, dynamic> json) {
  return _ExampleRemoteMovie.fromJson(json);
}

/// @nodoc
mixin _$ExampleRemoteMovie {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this ExampleRemoteMovie to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExampleRemoteMovie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExampleRemoteMovieCopyWith<ExampleRemoteMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleRemoteMovieCopyWith<$Res> {
  factory $ExampleRemoteMovieCopyWith(
          ExampleRemoteMovie value, $Res Function(ExampleRemoteMovie) then) =
      _$ExampleRemoteMovieCopyWithImpl<$Res, ExampleRemoteMovie>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$ExampleRemoteMovieCopyWithImpl<$Res, $Val extends ExampleRemoteMovie>
    implements $ExampleRemoteMovieCopyWith<$Res> {
  _$ExampleRemoteMovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExampleRemoteMovie
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
abstract class _$$ExampleRemoteMovieImplCopyWith<$Res>
    implements $ExampleRemoteMovieCopyWith<$Res> {
  factory _$$ExampleRemoteMovieImplCopyWith(_$ExampleRemoteMovieImpl value,
          $Res Function(_$ExampleRemoteMovieImpl) then) =
      __$$ExampleRemoteMovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$ExampleRemoteMovieImplCopyWithImpl<$Res>
    extends _$ExampleRemoteMovieCopyWithImpl<$Res, _$ExampleRemoteMovieImpl>
    implements _$$ExampleRemoteMovieImplCopyWith<$Res> {
  __$$ExampleRemoteMovieImplCopyWithImpl(_$ExampleRemoteMovieImpl _value,
      $Res Function(_$ExampleRemoteMovieImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExampleRemoteMovie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ExampleRemoteMovieImpl(
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
class _$ExampleRemoteMovieImpl implements _ExampleRemoteMovie {
  const _$ExampleRemoteMovieImpl({this.id, this.name});

  factory _$ExampleRemoteMovieImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExampleRemoteMovieImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'ExampleRemoteMovie(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleRemoteMovieImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of ExampleRemoteMovie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleRemoteMovieImplCopyWith<_$ExampleRemoteMovieImpl> get copyWith =>
      __$$ExampleRemoteMovieImplCopyWithImpl<_$ExampleRemoteMovieImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExampleRemoteMovieImplToJson(
      this,
    );
  }
}

abstract class _ExampleRemoteMovie implements ExampleRemoteMovie {
  const factory _ExampleRemoteMovie({final String? id, final String? name}) =
      _$ExampleRemoteMovieImpl;

  factory _ExampleRemoteMovie.fromJson(Map<String, dynamic> json) =
      _$ExampleRemoteMovieImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;

  /// Create a copy of ExampleRemoteMovie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExampleRemoteMovieImplCopyWith<_$ExampleRemoteMovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
