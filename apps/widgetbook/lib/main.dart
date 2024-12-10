import 'package:change_application_name/environments/env_dev.dart';
import 'package:change_application_name/main_dev.dart';

import 'widgetbook.dart';

void main(List<String> args) async {
  // await Firebase.initializeApp(
  //   options: FirebaseDevOptions.currentPlatform,
  // );
  // await FirebaseAppCheck.instance.activate(
  //   webRecaptchaSiteKey: F.webRecaptchaSiteKey,
  //   androidProvider: AndroidProvider.debug,
  //   appleProvider: AppleProvider.debug,
  // );

  // runApp(ApplicationWidgetbook(setting: setting));
  runApp(ApplicationWidgetbook());
}
