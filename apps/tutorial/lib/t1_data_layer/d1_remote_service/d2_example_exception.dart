import 'package:change_application_name/application.dart';

class RemoteWrongUserAndPasswordException extends NetworkException {
  RemoteWrongUserAndPasswordException({
    required super.statusCode,
    super.type,
    super.statusMessage,
    super.errorMessage,
    super.developerMessage,
    super.response,
    super.requestOptions,
    super.stackTrace,
    super.errors,
  });
}

class RemoteRequiredXXXException extends BadRequestException {
  RemoteRequiredXXXException({
    required super.statusCode,
    super.type,
    super.statusMessage,
    super.errorMessage,
    super.developerMessage,
    super.response,
    super.requestOptions,
    super.stackTrace,
    super.errors,
  });
}
