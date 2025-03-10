import 'package:change_application_name/application.dart';
import 'package:tutorial/tutorial.dart';

/// ⭐️ Name convention:
/// Suffix must be "...RpcService"
class ExampleAuthenticationRpcService extends RpcService {
  const ExampleAuthenticationRpcService(
    super.dio, {
    super.baseUrl = 'https://mock.apidog.com/m1/738246-714965-default',
    this.path = '/auth',
  });

  final String path;

  Future<JsonRpcResponse<RemoteAuthenticationResponse>> signInWithEmailPassword({
    required String email,
    required String password,
    String? requestId,
  }) =>
      request(
        path,
        method: 'signInWithEmailPassword',
        id: requestId,
        params: RemoteSignInWithEmailBody(
          email: email,
          password: password,
        ).toJson(),
        fromJson: RemoteAuthenticationResponse.fromJson,
      );
}

class ExampleMovieRpcService extends RpcService {
  const ExampleMovieRpcService(
    super.dio, {
    super.baseUrl = 'https://mock.apidog.com/m1/738246-714965-default',
    this.path = '/movies',
  });

  final String path;

  Future<JsonRpcResponse<RemoteMovieListResponse>> getHighLightMovieList({
    String? requestId,
  }) =>
      request(
        path,
        method: 'getHighLightMovieList',
        id: requestId,
        fromJson: RemoteMovieListResponse.fromJson,
      );

  Future<JsonRpcResponse<RemoteMovieListResponse>> getTrendMovieList({
    String? requestId,
  }) =>
      request(
        path,
        method: 'getTrendMovieList',
        id: requestId,
        fromJson: RemoteMovieListResponse.fromJson,
      );

  Future<JsonRpcResponse<RemoteMovieListResponse>> getMustWatchMovieList({
    String? requestId,
  }) =>
      request(
        path,
        method: 'getMustWatchMovieList',
        id: requestId,
        fromJson: RemoteMovieListResponse.fromJson,
      );
}
