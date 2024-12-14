import 'package:change_application_name/application.dart';

class AppRepository {
  AppRepository({
    AuthenticationRemoteDatasources? authRemoteDatasource,
    MovieRemoteDatasources? movieRemoteDatasource,
    DatabaseLocalDataSources? localDatasource,
  })  : _authRemoteDatasource =
            authRemoteDatasource ?? AuthenticationRemoteDatasources(),
        _movieRemoteDatasource =
            movieRemoteDatasource ?? MovieRemoteDatasources(),
        _localDatasource = localDatasource ?? DatabaseLocalDataSources();

  final AuthenticationRemoteDatasources _authRemoteDatasource;
  final MovieRemoteDatasources _movieRemoteDatasource;
  final DatabaseLocalDataSources _localDatasource;

  Stream<Either<Exception, bool>> signInWithEmailPassword({
    required String email,
    required String password,
  }) =>
      DatasourceBoundState.asStream<RemoteAuthenticationResponse, bool>(
        createCallFuture: () => _authRemoteDatasource.signInWithEmailPassword(
          email: email,
          password: password,
        ),
        saveCallResult: (response) => _localDatasource.saveToken(
          token: response.token,
          refreshToken: response.refreshToken,
        ),
        processResponse: (response) => true,
      );

  Stream<Either<Exception, List<MovieTableData>>> getMovieList() =>
      DatasourceBoundState.asStream<
          ({
            RemoteMovieListResponse hightLightMovieList,
            RemoteMovieListResponse trendMovieList,
            RemoteMovieListResponse mustWatchMovieList
          }),
          List<MovieTableData>>(
        loadFromDbFuture: () => _localDatasource.loadMovieList(),
        createCallFuture: () => _movieRemoteDatasource.getMovieList(),
        saveCallResult: (response) => _localDatasource.saveMovieList([
          ...?response.hightLightMovieList.data,
          ...?response.trendMovieList.data,
          ...?response.mustWatchMovieList.data,
        ].map(
          (e) => MovieTableData(
            id: e.id!,
            name: e.name!,
          ),
        )),
        processResponse: (response) => [
          ...?response.hightLightMovieList.data,
          ...?response.trendMovieList.data,
          ...?response.mustWatchMovieList.data,
        ]
            .map(
              (e) => MovieTableData(
                id: e.id!,
                name: e.name!,
              ),
            )
            .toList(),
      );
}
