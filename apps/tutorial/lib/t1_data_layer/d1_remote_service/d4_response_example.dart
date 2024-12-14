import 'package:change_application_name/application.dart';

part 'generated/d4_response_example.freezed.dart';

part 'generated/d4_response_example.g.dart';

/// ⭐️ Name convention:
/// Prefix must be "Remote..."
/// Suffix must be "...Response"
/// Run command: flutter pub run build_runner build
/// To generate freezed
@freezed
class ExampleRemoteAuthenticationResponse with _$ExampleRemoteAuthenticationResponse {
  /// Every constructor field must be nullable
  /// To avoid exception when call `fromJson`.
  const factory ExampleRemoteAuthenticationResponse({
    String? token,
    String? refreshToken,
  }) = _ExampleRemoteAuthenticationResponse;

  factory ExampleRemoteAuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$ExampleRemoteAuthenticationResponseFromJson(json);
}

@freezed
class ExampleRemoteMovieListResponse with _$ExampleRemoteMovieListResponse {
  const factory ExampleRemoteMovieListResponse({
    List<ExampleRemoteMovie>? data,
  }) = _ExampleRemoteMovieListResponse;

  factory ExampleRemoteMovieListResponse.fromJson(Map<String, dynamic> json) =>
      _$ExampleRemoteMovieListResponseFromJson(json);
}

@freezed
class ExampleRemoteMovie with _$ExampleRemoteMovie {
  const factory ExampleRemoteMovie({
    String? id,
    String? name,
  }) = _ExampleRemoteMovie;

  factory ExampleRemoteMovie.fromJson(Map<String, dynamic> json) =>
      _$ExampleRemoteMovieFromJson(json);
}
