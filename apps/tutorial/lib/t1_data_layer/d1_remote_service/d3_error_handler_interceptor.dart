import 'package:change_application_name/application.dart';

import 'd2_example_exception.dart';

class ExampleNetworkErrorHandlerInterceptor
    extends NetworkErrorHandlerInterceptor {
  ExampleNetworkErrorHandlerInterceptor();

  @override
  void onClientError(DioException err, ErrorInterceptorHandler handler) {
    if (err.error case NetworkException exception) {
      if (exception.code == 400001) {
        handler.reject(
          err.copyWith(
            error: NetworkWrongUserAndPasswordException(
              code: exception.code,
              message: exception.message,
              response: exception.response,
              requestOptions: exception.requestOptions,
              developerMessage: exception.developerMessage,
              stackTrace: exception.stackTrace,
              errors: exception.errors,
            ),
          ),
        );
      }
    } else {
      handler.next(err);
    }
  }

  @override
  void onServerError(DioException err, ErrorInterceptorHandler handler) {
    if (err.error case NetworkException exception) {
      handler.reject(err);
    } else {
      handler.next(err);
    }
  }

  ///========================= PRIVATE METHOD =========================///
}
