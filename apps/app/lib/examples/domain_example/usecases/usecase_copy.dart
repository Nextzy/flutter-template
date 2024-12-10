import 'package:change_application_name/application.dart';

class YourUsecase {
  YourUsecase({
    YourRepositoryImpl? repo,
  }) : _repo = repo ?? YourRepositoryImpl();

  final YourRepositoryImpl _repo;

  Stream<Either<Failure, YourEntity>> call() => throw UnimplementedError();
}
