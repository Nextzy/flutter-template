import 'package:data/lib.dart';

class YourRepositoryImpl extends YourRepository {
  YourRepositoryImpl({
    YourRetrofitRemoteDataSources? yourRemote,
  }) : _yourRemote = yourRemote ?? YourRetrofitRemoteDataSources();

  final YourRetrofitRemoteDataSources _yourRemote;

  @override
  Stream<Either<Failure, String>> getYourServiceStream() =>
      DatasourceBoundState.asStream<String, String>(
        createCallFuture: () => _yourRemote.getYourService(),
        processResponse: (response) => response,
        saveCallResult: (entity) {
          return null;
        },
        error: (exception, stackTrace) {
          Log.error(exception, stackTrace);
        },
      );

  @override
  Future<Either<Failure, String>> getYourServiceFuture() =>
      _yourRemote.getYourService().toEither();
}
