import 'package:change_application_name/application.dart';
import 'package:tutorial/tutorial.dart';

class ExampleRemoteDataSources {
  ExampleRemoteDataSources({
    ExampleAuthenticationApiService? authService,
    ExampleMovieApiService? movieService,
  })  : _authService = authService ??
            ExampleAuthenticationApiService(ExampleHttpClient.instance.dio),
        _movieService = movieService ??
            ExampleMovieApiService(ExampleHttpClient.instance.dio);

  final ExampleAuthenticationApiService _authService;
  final ExampleMovieApiService _movieService;

  /// Case 1: Call 1 service
  Future<ExampleRemoteAuthenticationResponse> signInWithEmailPassword({
    required String email,
    required String password,
  }) =>
      _authService
          .signInWithEmail(
              body: ExampleRemoteSignInWithEmailBody(
            email: email,
            password: password,
          ))
          .unwrapResponse();

  /// Case 2: Call multiple services sequentially
  Future<ExampleRemoteMovieListResponse> getMovieList() => _movieService
      .getHighLightMovieList()
      .then(
        (value) => _movieService.getTrendMovieList(),
      )
      .then(
        (value) => _movieService.getMustWatchMovieList(),
      )
      .unwrapResponse();

  /// Case 3: Call multiple services at same time
  Future<
      ({
        ExampleRemoteMovieListResponse hightLightMovieList,
        ExampleRemoteMovieListResponse trendMovieList,
        ExampleRemoteMovieListResponse mustWatchMovieList
      })> getMovieList2() => Future.wait([
        _movieService.getHighLightMovieList(),
        _movieService.getTrendMovieList(),
        _movieService.getMustWatchMovieList(),
      ]).then(
        (resultList) => (
          hightLightMovieList: resultList[0].data,
          trendMovieList: resultList[1].data,
          mustWatchMovieList: resultList[2].data,
        ),
      );

  /// Case 4: Customize call api logic follow by business logic
  Future getCustomList() async {
    final movieListResponse = await _movieService.getHighLightMovieList();

    if (movieListResponse.response.statusCode == 20001) {
      //TODO: Do something
      return Future.value();
    }
    throw NetworkException();
  }
}
