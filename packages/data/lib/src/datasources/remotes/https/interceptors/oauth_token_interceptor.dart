import 'package:data/lib.dart';

class OAuthTokenInterceptor extends InterceptorsWrapper {
  OAuthTokenInterceptor(
    this._dio, {
    required this.httpStatusCode,
    required this.refreshTokenUrl,
    required this.headerKey,
    this.prefixToken,
    this.retryLimit = 3,
  }) : retryCounter = 0;

  final Dio _dio;
  final int httpStatusCode;
  final String refreshTokenUrl;
  final int retryLimit;
  final String headerKey;
  final String? prefixToken;

  String? accessToken;
  String? refreshToken;
  int retryCounter;

  bool get hasAccessToken =>
      accessToken != null && accessToken?.isNotEmpty == true;

  bool get hasRefreshToken =>
      refreshToken != null && refreshToken?.isNotEmpty == true;

  // @override
  // void onRequest(
  //     RequestOptions options, RequestInterceptorHandler handler) async {
  //   if (hasAccessToken && isUseToken) {
  //     options.headers[headerKey] = prefixToken.isNullOrBlank
  //         ? '$accessToken'
  //         : '$prefixToken $accessToken';
  //   } else {
  //     options.headers.remove(headerKey);
  //   }
  //   super.onRequest(options, handler);
  // }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == httpStatusCode) {
      _handleResponse(response, handler);
    } else {
      retryCounter = 0;
      super.onResponse(response, handler);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response != null && err.response?.statusCode == httpStatusCode) {
      _handleError(err.response!, handler);
    } else {
      retryCounter = 0;
      super.onError(err, handler);
    }
  }

  Future<void> _handleResponse(
      Response response, ResponseInterceptorHandler handler) async {
    if (retryCounter <= retryLimit) {
      try {
        final data = (await _fetchRefreshToken()).data;
        // _saveToken();
        // final newResponse = await _reFetchService(response.requestOptions, newToken);
        // handler.resolve(newResponse);
      } catch (error) {
        retryCounter += 1;
        _handleResponse(response, handler);
      }
    } else {
      handler.reject(
        DioException(
          requestOptions: response.requestOptions,
          response: response,
          error: const UnauthorizedException(),
          stackTrace: Trace.current(),
          type: DioExceptionType.unknown,
          message: response.statusMessage,
        ),
      );
    }
  }

  Future<void> _handleError(
      Response response, ErrorInterceptorHandler handler) async {
    if (retryCounter <= retryLimit) {
      try {
        final data = (await _fetchRefreshToken()).data;
        // _saveToken();
        // final newResponse = await _reFetchService(response.requestOptions, newToken);
        // handler.resolve(newResponse);
      } catch (error) {
        retryCounter += 1;
        _handleError(response, handler);
      }
    } else {
      handler.reject(
        DioException(
          requestOptions: response.requestOptions,
          response: response,
          error: const UnauthorizedException(),
          stackTrace: Trace.current(),
          type: DioExceptionType.unknown,
          message: response.statusMessage,
        ),
      );
    }
  }

  void _saveToken({required String token, required String refreshToken}) {
    //TODO: Save token to database;
  }

  Future<Response> _reFetchService(
      RequestOptions requestOptions, String token) {
    //TODO: Recall service
    throw UnimplementedError();
  }

  Future<Response<Map<String, dynamic>>> _fetchRefreshToken() async =>
      await _dio.fetch<Map<String, dynamic>>(
        Options(
          method: 'POST',
        ).compose(
          _dio.options,
          refreshTokenUrl,
        ),
      );
}
