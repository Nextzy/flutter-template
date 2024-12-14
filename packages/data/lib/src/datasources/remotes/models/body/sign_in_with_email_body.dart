import 'package:change_application_name/application.dart';

part 'generated/sign_in_with_email_body.freezed.dart';

part 'generated/sign_in_with_email_body.g.dart';

@freezed
class RemoteSignInWithEmailBody with _$RemoteSignInWithEmailBody {
  const factory RemoteSignInWithEmailBody({
    required String? email,
    required String? password,
  }) = _RemoteSignInWithEmailBody;

  factory RemoteSignInWithEmailBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteSignInWithEmailBodyFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson().removeNullOrEmptyString();
}

