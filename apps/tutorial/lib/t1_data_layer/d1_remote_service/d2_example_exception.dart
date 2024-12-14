import 'package:change_application_name/application.dart';

class NetworkWrongUserAndPasswordException extends NetworkException {
  NetworkWrongUserAndPasswordException({
    super.code,
    super.message,
    super.response,
    super.requestOptions,
    super.developerMessage,
    super.stackTrace,
    super.errors,
  });
}

class NetworkRequiredXXXException extends BadRequestException {
  NetworkRequiredXXXException({
    super.code,
    super.message,
    super.response,
    super.requestOptions,
    super.developerMessage,
    super.stackTrace,
    super.errors,
  });
}
