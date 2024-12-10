import 'package:change_application_name/application.dart';

class HomeUsecase {
  HomeUsecase({
    YourRepositoryImpl? repo,
  }) : _repo = repo ?? YourRepositoryImpl();

  final YourRepositoryImpl _repo;

  Stream<Either<Failure, String>> call() {
    return _repo.getYourServiceStream();
  }
}
