import 'package:design_system/lib.dart';

class AppBlur {
  const AppBlur();

  ImageFilter get sm => ImageFilter.blur(
        sigmaX: 2,
        sigmaY: 2,
        tileMode: TileMode.clamp,
      );
}
