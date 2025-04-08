export 'package:core/core.dart';
export 'package:localization/localization.dart';
export 'package:data/data.dart';
export 'package:design_system/design_system.dart';
export 'package:utils/utils.dart';

export 'package:example_app/src/src.dart';
export 'package:example_app/router.dart';

import 'package:example_app/application.dart';

class MyApplication extends AppStatefulWidget {
  const MyApplication({super.key});

  static const defaultThemeMode = ThemeMode.light;

  @override
  State<StatefulWidget> createState() => _MyApplicationState();
}

class _MyApplicationState extends ApplicationState<MyApplication> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          BlocProvider<ExampleRouterBloc>(
            create: (BuildContext context) => ExampleRouterBloc(),
          ),
        ],
        child: BlocBuilder<ExampleRouterBloc, ExampleRouter>(
            builder: (context, ExampleRouter router) => AppMaterialRoute(
                  debugShowCheckedModeBanner: false,
                  theme: const AppTheme(),
                  themeMode: widget.themeMode,
                  routerConfig: router.config(
                    navigatorObservers: () => [
                      AutoRouteObserver(),
                    ],
                  ),
                  builder: (context, child) => child!,
                )));
  }
}
