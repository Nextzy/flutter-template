import 'package:data/lib.dart';

class AuthenticationRpcService extends RpcService {
  const AuthenticationRpcService(
    super.dio, {
    this.path = '/auth',
    super.baseUrl = 'https://api-brick.nextzy.com/v1',
    // super.baseUrl = 'http://127.0.0.1:3658/m1/830561-810297-default/v1',
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
  }) async {
    final successMockQueryParams = {
      'apidogApiId': '15405460',
    };
    final failMockQueryParams = {
      'apidogApiId': '15405460',
      'apidogResponseId': '21196837',
    };

    return request(
      path,
      method: 'requestOtp',
      id: requestId,
      params: RemoteRequestOtpBody(
        phoneNumber: phoneNumber,
      ).toJson(),
      fromJson: RemoteRequestOtpResponse.fromJson,
      queryParameters: failMockQueryParams,
    );
  }

  Future<JsonRpcResponse<RemoteVerifyOtpResponse>> verifyOtp({
    required String token,
    required String pin,
    String? requestId,
  }) async {
    final successMockQueryParams = {
      'apidogApiId': '15413309',
    };
    final failMockQueryParams = {
      'apidogApiId': '15413309',
      'apidogResponseId': '21044853',
    };

    return request(
      path,
      method: 'verifyOtp',
      id: requestId,
      params: RemoteVerifyOtpBody(
        token: token,
        pin: pin,
      ).toJson(),
      fromJson: RemoteVerifyOtpResponse.fromJson,
      queryParameters: successMockQueryParams,
    );
  }

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
