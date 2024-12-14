import 'package:change_application_name/application.dart';

part 'generated/d4_body_example.freezed.dart';

part 'generated/d4_body_example.g.dart';

/// ⭐️ Name convention:
/// Prefix must be "Remote..."
/// Suffix must be "...Body"
/// Run command: flutter pub run build_runner build
/// To generate freezed
@freezed
class ExampleRemoteSignInWithEmailBody with _$ExampleRemoteSignInWithEmailBody {
  const factory ExampleRemoteSignInWithEmailBody({
    required String? email,
    required String? password,
  }) = _ExampleRemoteSignInWithEmailBody;

  factory ExampleRemoteSignInWithEmailBody.fromJson(Map<String, dynamic> json) =>
      _$ExampleRemoteSignInWithEmailBodyFromJson(json);

  /// ⭐️ Body class need `toJson()` method
  @override
  Map<String, dynamic> toJson() => super.toJson().removeNullOrEmptyString();
}

