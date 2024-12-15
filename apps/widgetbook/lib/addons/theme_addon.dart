import 'package:widgetbook_app/widgetbook.dart';

class AppThemeAddon extends ThemeAddon<AppThemeData> {
  AppThemeAddon({
    required super.themes,
    super.initialTheme,
  }) : super(
          themeBuilder: (context, theme, child) {
            return ThemeApplication(
              lightTheme: AppTheme().lightTheme,
              darkTheme: AppTheme().darkTheme,
              themeMode: theme.themeMode,
              child: Theme(
                data: theme.toThemeData(),
                child: ColoredBox(
                  color: theme.toThemeData().scaffoldBackgroundColor,
                  child: DefaultTextStyle(
                    style: theme.toThemeData().textTheme.bodyMedium!,
                    child: child,
                  ),
                ),
              ),
            );
          },
        );
}
