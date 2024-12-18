// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:widgetbook_app/widgetbook.dart';

export 'package:change_application_name/application.dart';
export 'package:tutorial/tutorial.dart';
export 'package:widgetbook/widgetbook.dart' hide ColorSpace;
export 'examples/feature_copy/feature_copy.dart';
export 'core/core.dart';
export 'addons/addons.dart';
export 'src/src.dart';

class ApplicationWidgetbook extends StatelessWidget {
  const ApplicationWidgetbook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      addons: _getAddons(),
      directories: _getDirectories(),
      appBuilder: (context, child) {
        return TranslationProvider(
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              CountryLocalizations.delegate,
              ...GlobalMaterialLocalizations.delegates,
            ],
            builder: AppBreakpoint.createBuilder,
            home: SafeArea(
              child: WebZoom(child: child),
            ),
          ),
        );
      },
    );
  }

  ///=============== PRIVATE METHOD ==============///
  List<WidgetbookAddon<dynamic>> _getAddons() => [
        DeviceFrameAddon(
          devices: Devices.all,
          initialDevice: Devices.android.mediumPhone,
        ),
        SlangAddon(
          locales: [
            AppLocale.enGb,
            AppLocale.thTh,
          ],
          initialLocale: AppLocale.enGb,
          localizationsDelegates: [
            CountryLocalizations.delegate,
            ...GlobalMaterialLocalizations.delegates,
          ],
        ),
        ZoomAddon(
          initialZoom: 1.0,
        ),
        InspectorAddon(
          enabled: false,
        ),
        AppThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: AppTheme().lightTheme,
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: AppTheme().darkTheme,
            ),
          ],
        ),
      ];

  List<WidgetbookNode> _getDirectories() => [
        WidgetbookFolder(
          name: 'Widgets',
          isInitiallyExpanded: true,
          children: [
            CommonCategories(),
            InputCategories(),
            DisplayCategories(),
            TableCategories(),
            VisualizationCategories(),
          ],
        ),
        WidgetbookFolder(
          name: 'Features',
          isInitiallyExpanded: true,
          children: [
            HomeFeatureBook(),
            ScanFeatureBook(),
          ],
        ),
        WidgetbookFolder(
          name: 'Domain Layer',
          isInitiallyExpanded: true,
          children: [
            YourUsecaseBook(),
          ],
        ),
        WidgetbookFolder(
          name: 'Data Layer',
          isInitiallyExpanded: true,
          children: [
            YourDataBook(),
          ],
        ),
      ];
}
