import 'package:change_application_name/application.dart';
import 'package:tutorial/tutorial.dart';

/// ⭐️ Name convention:
/// Suffix must be "...Usecase"
/// Human readable name is very import for usecase
class ExampleSignInWithEmailAndPasswordUsecase {
  ExampleSignInWithEmailAndPasswordUsecase({
    ExampleRepository? repo,
  }) : _repo = repo ?? ExampleRepository();

  final ExampleRepository _repo;

  Stream<Either<Failure, bool>> call({
    required String email,
    required String password,
  }) =>
      _repo
          .signInWithEmailPassword(email: email, password: password)
          .mapEitherFailure(
        (exception) {
          /// ⭐️ Implement send failure logic to presentation layer
          if (exception.isClientException) {
            ClientFailure(message: Strings.common.fail.general);
          } else if (exception.isServerException) {
            ServerFailure(message: Strings.common.fail.general);
          }
          return CommonFailure(message: Strings.common.fail.general);
        },
      );
}

class ExampleGetMovieListUsecase extends BaseUsecase {
  ExampleGetMovieListUsecase({
    ExampleRepository? repo,
  }) : _repo = repo ?? ExampleRepository();

  final ExampleRepository _repo;

  Stream<Either<Failure, MovieListEntity>> call() =>
      _repo.getMovieList().mapEitherWithFailure(
        /// ⭐️ Convert data to Entity in usecase
        (data) => MovieListEntity.fromTableDataList(data),

        /// ⭐️ Convert exception to Failure in usecase
        (exception) {
          return getFailure(exception);
        },
      );
}
