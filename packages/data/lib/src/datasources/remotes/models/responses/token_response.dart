import 'package:change_application_name/application.dart';

part 'generated/token_response.freezed.dart';

part 'generated/token_response.g.dart';

@freezed
class RemoteAuthenticationResponse with _$RemoteAuthenticationResponse {
  const factory RemoteAuthenticationResponse({
    String? token,
    String? refreshToken,
  }) = _RemoteAuthenticationResponse;

  factory RemoteAuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteAuthenticationResponseFromJson(json);
}
