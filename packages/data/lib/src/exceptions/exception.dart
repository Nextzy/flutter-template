import 'package:data/lib.dart';

class AppException implements Exception {
  const AppException({
    this.code,
    this.type,
    this.message,
    this.developerMessage,
    this.stacktrace,
    this.errors,
  });

  final int? code;
  final String? type;
  final String? message;
  final String? developerMessage;
  final List<AppException>? errors;
  final StackTrace? stacktrace;

  factory AppException.fromError(Error? error) {
    return AppException(
      developerMessage: error?.toString(),
      stacktrace: error?.stackTrace,
    );
  }

  factory AppException.fromDioException(DioException? exception) {
    final response = exception?.response;

    if (response != null) {
      final errorResponse = ErrorResponse.fromJson(exception?.response?.data);

      return AppException(
        code: exception?.response?.statusCode,
        type: errorResponse.code,
        message: errorResponse.message,
        developerMessage: errorResponse.developerMessage,
        stacktrace: exception?.stackTrace,
      );
    } else {
      return AppException(
        code: exception?.response?.statusCode,
        type: exception?.type.toString(),
        developerMessage: exception?.message,
        stacktrace: exception?.stackTrace,
      );
    }
  }

  factory AppException.fromNetworkException(NetworkException? exception) {
    return AppException(
      code: exception?.code,
      message: exception?.message,
      developerMessage: exception?.developerMessage,
      stacktrace: exception?.stackTrace,
    );
  }

  factory AppException.fromException(Object? exception) {
    return AppException(
      developerMessage: exception.toString(),
    );
  }

  bool get isClientException => (code ?? 0) >= 400 && (code ?? 0) < 500;

  bool get isServerException => (code ?? 0) >= 500 && (code ?? 0) < 600;

  @override
  String toString() {
    String msg = '';
    if (code != null) msg += '>>Code: $code\n';
    if (type.isNotNullOrBlank) msg += '>>Type: $type\n';
    if (message != null && message!.isNotEmpty) {
      msg += '>>Message: $message\n';
    }
    if (developerMessage != null && developerMessage!.isNotEmpty) {
      msg += '>>Description: $developerMessage\n';
    }
    errors?.forEach(
      (error) => msg += '   ${error.toString()}]\n',
    );
    return msg;
  }
}
