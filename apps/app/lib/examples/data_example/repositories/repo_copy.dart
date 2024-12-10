import 'package:change_application_name/application.dart';

abstract class YourRepository {
  Stream<Either<Failure, String>> getYourServiceStream();

  Future<Either<Failure, String>> getYourServiceFuture();

}
