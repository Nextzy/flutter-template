import 'package:data/lib.dart';

extension AppExceptionFutureExtensions<T> on Future<T> {
  Future<Either<AppException, T>> toEitherAppException() =>
      then<Either<AppException, T>>(
        (T value) => Right(value),
      ).onError(
        (exception, stackTrace) {
          if (exception is Error) {
            Log.e(exception, stackTrace: exception.stackTrace);
            return Left(AppException.fromError(exception));
          } else if (exception is DioException) {
            Log.e(exception.error);
            return Left(AppException.fromDioException(exception));
          } else {
            Log.e(exception);
            return Left(AppException(developerMessage: exception.toString()));
          }
        },
      );
}

extension AppExceptionStreamExtensions<E extends Exception, DATA>
    on Stream<Either<E, DATA>> {
  Stream<Either<AppException, DATA>> mapEitherAppException() => map(
        (event) => event.resolve(
          (data) => Right(data),
          (exception) {
            if (exception is DioException) {
              Log.e(exception.error);
              return Left(AppException.fromDioException(exception));
            } else {
              Log.e(exception);
              return Left(AppException(developerMessage: exception.toString()));
            }
          },
        ),
      );
}
