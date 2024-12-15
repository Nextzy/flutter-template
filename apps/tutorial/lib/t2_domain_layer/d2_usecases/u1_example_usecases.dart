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
          .mapEitherException(
            (exception) => Failure.fromException(exception),
          );
}

class ExampleGetMovieListUsecase {
  ExampleGetMovieListUsecase({
    ExampleRepository? repo,
  }) : _repo = repo ?? ExampleRepository();

  final ExampleRepository _repo;

  Stream<Either<Failure, MovieListEntity>> call() =>
      _repo.getMovieList().mapEitherWithFailure(
            /// ⭐️ Convert data to Entity in usecase
            (data) => MovieListEntity.fromTableDataList(data),

            /// ⭐️ Convert exception to Failure in usecase
            (exception) => Failure.fromException(exception),
          );
}
