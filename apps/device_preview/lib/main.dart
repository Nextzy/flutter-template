import 'package:change_application_name/application.dart';
import 'package:change_application_name/main_dev.dart';
import 'package:device_preview/device_preview.dart';

Future<void> main() async {
  await setupMainDev();
  await setupFirebaseDev();
  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => MyApplication(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}