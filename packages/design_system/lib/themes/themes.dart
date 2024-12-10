// ignore_for_file: prefer_const_constructors
export 'colors/transparent.dart';
export 'styles/styles.dart';
export 'colors/colors.dart';
export 'colors/color_stratum_palette.dart';
export 'colors/color_untitled_palette.dart';
export 'texts.dart';
export 'themes.dart';
export 'theme_data.dart';
export 'constants.dart';

import 'package:design_system/lib.dart';

class AppTheme {
  AppTheme({
    AppThemeData? lightTheme,
    AppThemeData? darkTheme,
    this.scrollBehavior = const AppScrollBehavior(),
    this.themeAnimationDuration = const Duration(milliseconds: 200),
    this.themeAnimationCurve = Curves.easeInOut,
    this.highContrastTheme,
    this.highContrastDarkTheme,
  })  : lightTheme = lightTheme ??
            AppThemeData(
              themeMode: ThemeMode.light,
              color: const AppLightThemeColor(),
              borderRadius: const AppRadius(),
              border: const AppBorder(),
              shadow: const AppShadow(),
              blur: const AppBlur(),
              space: const AppSpace(),
              size: const AppSize(),
              systemOverlayStyle: AppSystemUI().light,
              systemOverlayInverseStyle: AppSystemUI().dark,
              splashFactory: NoSplash.splashFactory,
            ),
        darkTheme = darkTheme ??
            AppThemeData(
              themeMode: ThemeMode.dark,
              color: const AppDarkThemeColor(),
              borderRadius: const AppRadius(),
              border: const AppBorder(),
              shadow: const AppShadow(),
              blur: const AppBlur(),
              space: const AppSpace(),
              size: const AppSize(),
              systemOverlayStyle: AppSystemUI().dark,
              systemOverlayInverseStyle: AppSystemUI().light,
              splashFactory: NoSplash.splashFactory,
            );

  final AppThemeData lightTheme;
  final AppThemeData darkTheme;
  final ScrollBehavior scrollBehavior;
  final Duration themeAnimationDuration;
  final Curve themeAnimationCurve;
  final AppThemeData? highContrastTheme;
  final AppThemeData? highContrastDarkTheme;
}
