import 'package:change_application_name/application.dart';

part 'generated/movie_api_service.g.dart';

@RestApi()
abstract class MovieApiService {
  factory MovieApiService(Dio dio, {String baseUrl}) =
  _MovieApiService;

  @GET('/movies/high-light')
  Future<HttpResponse<RemoteMovieListResponse>> getHighLightMovieList();

  @GET('/movies/trend')
  Future<HttpResponse<RemoteMovieListResponse>> getTrendMovieList();

  @GET('/movies/must-watch')
  Future<HttpResponse<RemoteMovieListResponse>> getMustWatchMovieList();
}
