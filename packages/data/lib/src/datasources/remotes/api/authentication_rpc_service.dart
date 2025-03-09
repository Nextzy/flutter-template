import 'package:data/lib.dart';

class AuthenticationRpcService extends RpcService {
  const AuthenticationRpcService(
    super.dio, {
    this.path = '/auth',
    super.baseUrl,
  });

  final String path;

  Future<RpcResponse<RemoteAuthenticationResponse>> signInWithEmailPassword({
    required String email,
    required String password,
    String? requestId,
  }) =>
      call(
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
