import 'package:example_app/application.dart';

part 'generated/authentication_entity.freezed.dart';

@freezed
abstract class AuthenticationEntity with _$AuthenticationEntity {
  const factory AuthenticationEntity({
    required String otpRefNo,
    required String otpToken,
  }) = _AuthenticationEntity;

  factory AuthenticationEntity.fromResponse(
          RemoteRequestOtpResponse response) =>
      AuthenticationEntity(
        otpRefNo: response.refno ?? '',
        otpToken: response.token ?? '',
      );
}
