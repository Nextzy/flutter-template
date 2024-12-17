import 'package:change_application_name/application.dart';

part 'generated/error_response.freezed.dart';

part 'generated/error_response.g.dart';

@freezed
class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    String? code,
    String? message,
    String? developerMessage,
  }) = _ErrorResponseResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}

