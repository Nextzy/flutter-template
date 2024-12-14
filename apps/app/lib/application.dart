export 'package:core/core.dart';
export 'package:localization/localization.dart';
export 'package:data/data.dart';
export 'package:design_system/design_system.dart';
export 'package:utils/utils.dart';

//
export 'package:flutter_localizations/flutter_localizations.dart';
export 'package:change_application_name/src/src.dart';
export 'package:change_application_name/router.dart';
export 'package:change_application_name/extensions/extensions.dart';
export 'package:change_application_name/environments/environments.dart';
export 'package:change_application_name/routers/routers.dart';
export 'package:sms_autofill/sms_autofill.dart' hide Orientation, ColorBuilder;
export 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
export 'package:country_code_picker/country_code_picker.dart';
export 'package:flutter/semantics.dart';
export '../examples/examples.dart';

import 'package:change_application_name/application.dart';

enum ApplicationEvent { goNamed }

const platformChannel = MethodChannel('com.example/channel');

/// The Widget that configures your application.
class MyApplication extends AppStatefulWidget {
  const MyApplication({
    super.key = const Key('MyApplication'),
    this.locale,
    this.builder,
  });

  static AppHttpClient get httpClient => AppHttpClient.instance;
  static const defaultThemeMode = ThemeMode.light;

  final Locale? locale;
  final TransitionBuilder? builder;

  @override
  State<StatefulWidget> createState() => _MyApplicationState();
}

class _MyApplicationState extends ApplicationState<MyApplication>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void onDeeplinkUri(Uri uri) {
    switch (uri.path) {
      case '/link/':
        break;
    }
    super.onDeeplinkUri(uri);
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: TranslationProvider(
        child: SplashScreenPage(
          skipWhenDebugMode: false,
          builder: (context, setup) {
            return MultiProvider(
              providers: [
                BlocProvider<InternetConnectionBloc>(
                  create: (BuildContext context) => InternetConnectionBloc(
                    initialResult: setup.connectivityResult,
                  ),
                  lazy: false,
                ),
                BlocProvider<AppRouterBloc>(
                  create: (BuildContext context) => AppRouterBloc(),
                ),
                BlocProvider<SettingBloc>(
                  create: (BuildContext context) =>
                      SettingBloc(initialSetting: setup.setting),
                  lazy: false,
                ),
              ],
              child: BlocBuilder<SettingBloc, SettingTableData>(
                builder: (context, setting) => AnimatedBuilder(
                  animation: _controller,
                  builder: (BuildContext context, Widget? child) => //
                      BlocBuilder<AppRouterBloc, AppRouter>(
                    builder: (context, AppRouter router) => //
                        AppMaterialRoute(
                      debugShowCheckedModeBanner: false,
                      restorationScopeId: restorationId,

                      ///============= Setup Localization =============//
                      localizationsDelegates: const [
                        CountryLocalizations.delegate,
                        ...GlobalMaterialLocalizations.delegates,
                      ],
                      supportedLocales: AppLocaleUtils.supportedLocales,
                      locale: widget.locale ??
                          TranslationProvider.of(context).flutterLocale,
                      onGenerateTitle: (BuildContext context) =>
                          AppEnv.instance.name,
                      theme: AppTheme(),
                      themeMode: setting.themeMode.toEnum(ThemeMode.values),
                      routerConfig: router.config(
                        navigatorObservers: () => [
                          AutoRouteObserver(),
                        ],
                      ),
                      builder: (context, child) => InApplicationUpdate(
                        packageInfo: setup.packageInfo,
                        child: widget.builder?.call(context, child) ?? child!,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
