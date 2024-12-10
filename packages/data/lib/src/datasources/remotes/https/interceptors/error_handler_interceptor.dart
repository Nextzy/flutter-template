import 'package:data/lib.dart';

class AppNetworkErrorHandlerInterceptor extends NetworkErrorHandlerInterceptor {
  AppNetworkErrorHandlerInterceptor();

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }

  ///========================= PRIVATE METHOD =========================///
}
