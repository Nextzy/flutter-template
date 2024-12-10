import 'package:design_system/lib.dart';

class AppSystemUI {
  AppSystemUI({
    SystemUiOverlayStyle? light,
    SystemUiOverlayStyle? dark,
  })  : light = light ??
            SystemUiOverlayStyle(
              // Set status bar color
              statusBarColor: Colors.white,
              // Set status bar icon color
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light,
              systemNavigationBarColor: GrayModernColor().c50,
              systemNavigationBarIconBrightness: Brightness.dark,
            ),
        dark = dark ??
            SystemUiOverlayStyle(
              // Set status bar color
              statusBarColor: Colors.black,
              // Set status bar icon color
              statusBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.dark,
              systemNavigationBarColor: GrayModernColor().c900,
              systemNavigationBarIconBrightness: Brightness.light,
            );

  final SystemUiOverlayStyle light;
  final SystemUiOverlayStyle dark;
}
