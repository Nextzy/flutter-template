import 'package:data/lib.dart';

/// Singleton
class AppHttpClient extends BaseHttpClient {
  AppHttpClient._singleton({required super.dio});

  static final AppHttpClient instance = AppHttpClient._singleton(dio: Dio());

  @override
  void setupOptions(Dio dio, BaseOptions options) {
    super.setupOptions(dio, options);
    options.connectTimeout = 20.seconds;
    options.receiveTimeout = 20.seconds;
  }

  @override
  void setupInterceptors(Dio dio, Interceptors interceptors) {
    super.setupInterceptors(dio, interceptors);
    interceptors.addAll([
      ConnectivityInterceptor(),
      OAuthTokenInterceptor(
        dio,
        httpStatusCode: 401,
        refreshTokenUrl: '/refreshToken',
        headerKey: 'Authorization',
      ),
      AppNetworkErrorHandlerInterceptor(),
      HttpLogInterceptor(), // Add to last
    ]);
  }

  void setupProxyAdapter(String? ip, String? port) {
    if (BuildConfig.debug && ip != null && port != null) {
      dio.httpClientAdapter = IOHttpClientAdapter(createHttpClient: () {
        final client = HttpClient();

        client.findProxy = (uri) => 'PROXY $ip:$port';
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;

        return client;
      });
    }
  }
}
