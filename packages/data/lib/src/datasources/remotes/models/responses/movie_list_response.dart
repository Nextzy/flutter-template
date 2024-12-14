import 'package:change_application_name/application.dart';

part 'generated/movie_list_response.freezed.dart';

part 'generated/movie_list_response.g.dart';

@freezed
class RemoteMovieListResponse with _$RemoteMovieListResponse {
  const factory RemoteMovieListResponse({
    List<RemoteMovie>? data,
  }) = _RemoteMovieListResponse;

  factory RemoteMovieListResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteMovieListResponseFromJson(json);
}

@freezed
class RemoteMovie with _$RemoteMovie {
  const factory RemoteMovie({
    String? id,
    String? name,
  }) = _RemoteMovie;

  factory RemoteMovie.fromJson(Map<String, dynamic> json) =>
      _$RemoteMovieFromJson(json);
}
