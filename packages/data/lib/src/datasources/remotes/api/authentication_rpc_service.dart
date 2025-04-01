import 'package:data/lib.dart';

class AuthenticationRpcService extends RpcService {
  const AuthenticationRpcService(
    super.dio, {
    this.path = '/auth',
    super.baseUrl,
  });

  final String path;

  Future<JsonRpcResponse<RemoteAuthenticationResponse>>
      signInWithEmailPassword({
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

  Future<JsonRpcResponse<RemoteRequestOtpResponse>> requestOtp({
    required String phoneNumber,
    String? requestId,
  }) async =>
      request(
        path,
        method: 'requestOtp',
        id: requestId,
        params: RemoteRequestOtpBody(
          phoneNumber: phoneNumber,
        ).toJson(),
        fromJson: RemoteRequestOtpResponse.fromJson,
      );

  Future<JsonRpcResponse<RemoteVerifyOtpResponse>> verifyOtp({
    required String token,
    required String pin,
    String? requestId,
  }) async =>
      request(
        path,
        method: 'verifyOtp',
        id: requestId,
        params: RemoteVerifyOtpBody(
          token: token,
          pin: pin,
        ).toJson(),
        fromJson: RemoteVerifyOtpResponse.fromJson,
      );

  Future<JsonRpcResponse<RemoteSubtractResponse>> subtract({
    required int subtrahend,
    required int minuend,
    String? requestId,
  }) async =>
      request(
        path,
        method: 'subtract',
        id: requestId,
        params: RemoteSubtractBody(
          subtrahend: subtrahend,
          minuend: minuend,
        ).toJson(),
        fromJson: RemoteSubtractResponse.fromJson,
      );
}
