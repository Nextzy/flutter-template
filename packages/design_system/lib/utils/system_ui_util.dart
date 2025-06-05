import 'package:design_system/lib.dart';

class AppSystemUserInterfaceUtil {

  static void setBlackNavigation() =>
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.light,
      ));

  static void restoreSystemUIOverlays(BuildContext context) {
    final systemUiStyle = ThemeApplication.of(context).systemOverlayStyle;
    SystemChrome.setSystemUIOverlayStyle(systemUiStyle);
  }

  static Future<void> enterFullPage() =>
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  static Future<void> exitFullPage() => SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: SystemUiOverlay.values,
      );
}
