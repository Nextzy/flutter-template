import 'package:change_application_name/application.dart';
import 'package:tutorial/tutorial.dart';

/// ⭐️ Name convention:
/// Suffix must be "...Usecase"
/// Human readable name is very import for usecase
class SignInWithEmailAndPassword {
  SignInWithEmailAndPassword({
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

class GetMovieListUsecase {
  GetMovieListUsecase({
    ExampleRepository? repo,
  }) : _repo = repo ?? ExampleRepository();

  final ExampleRepository _repo;

  Stream<Either<Failure, MovieListEntity>> call() =>
      _repo.getMovieList().mapEitherWithFailure(
            (data) => MovieListEntity.fromTableDataList(data),
            (exception) => Failure.fromException(exception),
          );
}
