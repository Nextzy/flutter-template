import 'package:change_application_name/application.dart';
import 'package:tutorial/tutorial.dart';

class ExampleRepository {
  ExampleRepository({
    ExampleRemoteDataSources? remoteDatasource,
    ExampleLocalDataSources? localDatasource,
  })  : _remoteDatasource = remoteDatasource ?? ExampleRemoteDataSources(),
        _localDatasource = localDatasource ?? ExampleLocalDataSources();

  final ExampleRemoteDataSources _remoteDatasource;
  final ExampleLocalDataSources _localDatasource;

  Future<Either<AppException, bool>> signInWithEmailPasswordFuture({
    required String email,
    required String password,
  }) =>
      _remoteDatasource
          .signInWithEmailPassword(email: email, password: password)
          .then((value) => true)
          .toEitherAppException();

  Stream<Either<AppException, bool>> signInWithEmailPassword({
    required String email,
    required String password,
  }) =>
      DatasourceBoundState.asStream<ExampleRemoteAuthenticationResponse, bool>(
        createCallFuture: () => _remoteDatasource.signInWithEmailPassword(
          email: email,
          password: password,
        ),
        saveCallResult: (response) => _localDatasource.saveToken(
          token: response.token,
          refreshToken: response.refreshToken,
        ),
        processResponse: (response) => true,
      ).mapEitherAppException();

  Stream<Either<AppException, List<ExampleMovieTableData>>> getMovieList() =>
      DatasourceBoundState.asStream<ExampleRemoteMovieListResponse,
          List<ExampleMovieTableData>>(
        loadFromDbFuture: () => _localDatasource.loadMovieList(),
        createCallFuture: () => _remoteDatasource.getMovieList(),
        saveCallResult: (response) =>
            _localDatasource.saveMovieList(response.data?.map(
                  (e) => ExampleMovieTableData(
                    id: e.id!,
                    name: e.name!,
                  ),
                ) ??
                []),
        processResponse: (response) =>
            response.data
                ?.map(
                  (e) => ExampleMovieTableData(
                    id: e.id!,
                    name: e.name!,
                  ),
                )
                .toList() ??
            [],
      ).mapEitherAppException();
}
