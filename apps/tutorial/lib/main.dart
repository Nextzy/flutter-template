import 'package:change_application_name/application.dart';
import 'package:tutorial/playground_page.dart';

part 'main.gr.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppLocalization.init();
  runApp(TranslationProvider(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppMaterialRoute(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        CountryLocalizations.delegate,
        ...GlobalMaterialLocalizations.delegates,
      ],
      supportedLocales: AppLocaleUtils.supportedLocales,
      locale: TranslationProvider.of(context).flutterLocale,
      onGenerateTitle: (BuildContext context) => 'Playground Demo',
      theme: AppTheme(),
      themeMode: ThemeMode.system,
      routerConfig: PlaygroundRouter().config(),
      builder: (context, child) => AppBreakpoint.createBuilder(
        context,
        child,
      ),
    );
  }
}

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class PlaygroundRouter extends RootStackRouter {
  PlaygroundRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: PlaygroundRoute.page,
          initial: true,
        ),
      ];
}
