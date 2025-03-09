// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../d4_response_example.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExampleRemoteAuthenticationResponse {
  String? get token;
  String? get refreshToken;

  /// Create a copy of ExampleRemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExampleRemoteAuthenticationResponseCopyWith<
          ExampleRemoteAuthenticationResponse>
      get copyWith => _$ExampleRemoteAuthenticationResponseCopyWithImpl<
              ExampleRemoteAuthenticationResponse>(
          this as ExampleRemoteAuthenticationResponse, _$identity);

  /// Serializes this ExampleRemoteAuthenticationResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExampleRemoteAuthenticationResponse &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, refreshToken);

  @override
  String toString() {
    return 'ExampleRemoteAuthenticationResponse(token: $token, refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class $ExampleRemoteAuthenticationResponseCopyWith<$Res> {
  factory $ExampleRemoteAuthenticationResponseCopyWith(
          ExampleRemoteAuthenticationResponse value,
          $Res Function(ExampleRemoteAuthenticationResponse) _then) =
      _$ExampleRemoteAuthenticationResponseCopyWithImpl;
  @useResult
  $Res call({String? token, String? refreshToken});
}

/// @nodoc
class _$ExampleRemoteAuthenticationResponseCopyWithImpl<$Res>
    implements $ExampleRemoteAuthenticationResponseCopyWith<$Res> {
  _$ExampleRemoteAuthenticationResponseCopyWithImpl(this._self, this._then);

  final ExampleRemoteAuthenticationResponse _self;
  final $Res Function(ExampleRemoteAuthenticationResponse) _then;

  /// Create a copy of ExampleRemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_self.copyWith(
      token: freezed == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ExampleRemoteAuthenticationResponse
    implements ExampleRemoteAuthenticationResponse {
  const _ExampleRemoteAuthenticationResponse({this.token, this.refreshToken});
  factory _ExampleRemoteAuthenticationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ExampleRemoteAuthenticationResponseFromJson(json);

  @override
  final String? token;
  @override
  final String? refreshToken;

  /// Create a copy of ExampleRemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExampleRemoteAuthenticationResponseCopyWith<
          _ExampleRemoteAuthenticationResponse>
      get copyWith => __$ExampleRemoteAuthenticationResponseCopyWithImpl<
          _ExampleRemoteAuthenticationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExampleRemoteAuthenticationResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExampleRemoteAuthenticationResponse &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, refreshToken);

  @override
  String toString() {
    return 'ExampleRemoteAuthenticationResponse(token: $token, refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class _$ExampleRemoteAuthenticationResponseCopyWith<$Res>
    implements $ExampleRemoteAuthenticationResponseCopyWith<$Res> {
  factory _$ExampleRemoteAuthenticationResponseCopyWith(
          _ExampleRemoteAuthenticationResponse value,
          $Res Function(_ExampleRemoteAuthenticationResponse) _then) =
      __$ExampleRemoteAuthenticationResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String? token, String? refreshToken});
}

/// @nodoc
class __$ExampleRemoteAuthenticationResponseCopyWithImpl<$Res>
    implements _$ExampleRemoteAuthenticationResponseCopyWith<$Res> {
  __$ExampleRemoteAuthenticationResponseCopyWithImpl(this._self, this._then);

  final _ExampleRemoteAuthenticationResponse _self;
  final $Res Function(_ExampleRemoteAuthenticationResponse) _then;

  /// Create a copy of ExampleRemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_ExampleRemoteAuthenticationResponse(
      token: freezed == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$ExampleRemoteMovieListResponse {
  List<ExampleRemoteMovie>? get data;

  /// Create a copy of ExampleRemoteMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExampleRemoteMovieListResponseCopyWith<ExampleRemoteMovieListResponse>
      get copyWith => _$ExampleRemoteMovieListResponseCopyWithImpl<
              ExampleRemoteMovieListResponse>(
          this as ExampleRemoteMovieListResponse, _$identity);

  /// Serializes this ExampleRemoteMovieListResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExampleRemoteMovieListResponse &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'ExampleRemoteMovieListResponse(data: $data)';
  }
}

/// @nodoc
abstract mixin class $ExampleRemoteMovieListResponseCopyWith<$Res> {
  factory $ExampleRemoteMovieListResponseCopyWith(
          ExampleRemoteMovieListResponse value,
          $Res Function(ExampleRemoteMovieListResponse) _then) =
      _$ExampleRemoteMovieListResponseCopyWithImpl;
  @useResult
  $Res call({List<ExampleRemoteMovie>? data});
}

/// @nodoc
class _$ExampleRemoteMovieListResponseCopyWithImpl<$Res>
    implements $ExampleRemoteMovieListResponseCopyWith<$Res> {
  _$ExampleRemoteMovieListResponseCopyWithImpl(this._self, this._then);

  final ExampleRemoteMovieListResponse _self;
  final $Res Function(ExampleRemoteMovieListResponse) _then;

  /// Create a copy of ExampleRemoteMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ExampleRemoteMovie>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ExampleRemoteMovieListResponse
    implements ExampleRemoteMovieListResponse {
  const _ExampleRemoteMovieListResponse({final List<ExampleRemoteMovie>? data})
      : _data = data;
  factory _ExampleRemoteMovieListResponse.fromJson(Map<String, dynamic> json) =>
      _$ExampleRemoteMovieListResponseFromJson(json);

  final List<ExampleRemoteMovie>? _data;
  @override
  List<ExampleRemoteMovie>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ExampleRemoteMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExampleRemoteMovieListResponseCopyWith<_ExampleRemoteMovieListResponse>
      get copyWith => __$ExampleRemoteMovieListResponseCopyWithImpl<
          _ExampleRemoteMovieListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExampleRemoteMovieListResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExampleRemoteMovieListResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'ExampleRemoteMovieListResponse(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ExampleRemoteMovieListResponseCopyWith<$Res>
    implements $ExampleRemoteMovieListResponseCopyWith<$Res> {
  factory _$ExampleRemoteMovieListResponseCopyWith(
          _ExampleRemoteMovieListResponse value,
          $Res Function(_ExampleRemoteMovieListResponse) _then) =
      __$ExampleRemoteMovieListResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<ExampleRemoteMovie>? data});
}

/// @nodoc
class __$ExampleRemoteMovieListResponseCopyWithImpl<$Res>
    implements _$ExampleRemoteMovieListResponseCopyWith<$Res> {
  __$ExampleRemoteMovieListResponseCopyWithImpl(this._self, this._then);

  final _ExampleRemoteMovieListResponse _self;
  final $Res Function(_ExampleRemoteMovieListResponse) _then;

  /// Create a copy of ExampleRemoteMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ExampleRemoteMovieListResponse(
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ExampleRemoteMovie>?,
    ));
  }
}

/// @nodoc
mixin _$ExampleRemoteMovie {
  String? get id;
  String? get name;

  /// Create a copy of ExampleRemoteMovie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExampleRemoteMovieCopyWith<ExampleRemoteMovie> get copyWith =>
      _$ExampleRemoteMovieCopyWithImpl<ExampleRemoteMovie>(
          this as ExampleRemoteMovie, _$identity);

  /// Serializes this ExampleRemoteMovie to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExampleRemoteMovie &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'ExampleRemoteMovie(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $ExampleRemoteMovieCopyWith<$Res> {
  factory $ExampleRemoteMovieCopyWith(
          ExampleRemoteMovie value, $Res Function(ExampleRemoteMovie) _then) =
      _$ExampleRemoteMovieCopyWithImpl;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$ExampleRemoteMovieCopyWithImpl<$Res>
    implements $ExampleRemoteMovieCopyWith<$Res> {
  _$ExampleRemoteMovieCopyWithImpl(this._self, this._then);

  final ExampleRemoteMovie _self;
  final $Res Function(ExampleRemoteMovie) _then;

  /// Create a copy of ExampleRemoteMovie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ExampleRemoteMovie implements ExampleRemoteMovie {
  const _ExampleRemoteMovie({this.id, this.name});
  factory _ExampleRemoteMovie.fromJson(Map<String, dynamic> json) =>
      _$ExampleRemoteMovieFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  /// Create a copy of ExampleRemoteMovie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExampleRemoteMovieCopyWith<_ExampleRemoteMovie> get copyWith =>
      __$ExampleRemoteMovieCopyWithImpl<_ExampleRemoteMovie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExampleRemoteMovieToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExampleRemoteMovie &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'ExampleRemoteMovie(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$ExampleRemoteMovieCopyWith<$Res>
    implements $ExampleRemoteMovieCopyWith<$Res> {
  factory _$ExampleRemoteMovieCopyWith(
          _ExampleRemoteMovie value, $Res Function(_ExampleRemoteMovie) _then) =
      __$ExampleRemoteMovieCopyWithImpl;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$ExampleRemoteMovieCopyWithImpl<$Res>
    implements _$ExampleRemoteMovieCopyWith<$Res> {
  __$ExampleRemoteMovieCopyWithImpl(this._self, this._then);

  final _ExampleRemoteMovie _self;
  final $Res Function(_ExampleRemoteMovie) _then;

  /// Create a copy of ExampleRemoteMovie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_ExampleRemoteMovie(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
