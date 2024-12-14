import 'package:change_application_name/application.dart';
import 'package:tutorial/tutorial.dart';

part 'generated/d5_example_api_service.g.dart';

/// ⭐️ Name convention:
/// Suffix must be "...ApiService"
/// Run command: flutter pub run build_runner build
/// To generate Retrofit
@RestApi(baseUrl: 'https://mock.apidog.com/m1/738246-714965-default')
abstract class ExampleAuthenticationApiService {
  factory ExampleAuthenticationApiService(Dio dio, {String baseUrl}) =
      _ExampleAuthenticationApiService;

  @POST('/auth/emailPass')
  Future<HttpResponse<ExampleRemoteAuthenticationResponse>> signInWithEmail({
    @Body() required ExampleRemoteSignInWithEmailBody body,
  });
}

@RestApi(baseUrl: 'https://mock.apidog.com/m1/738246-714965-default')
abstract class ExampleMovieApiService {
  factory ExampleMovieApiService(Dio dio, {String baseUrl}) =
      _ExampleMovieApiService;

  @GET('/movies/high-light')
  Future<HttpResponse<ExampleRemoteMovieListResponse>> getHighLightMovieList();

  @GET('/movies/trend')
  Future<HttpResponse<ExampleRemoteMovieListResponse>> getTrendMovieList();

  @GET('/movies/must-watch')
  Future<HttpResponse<ExampleRemoteMovieListResponse>> getMustWatchMovieList();
}
