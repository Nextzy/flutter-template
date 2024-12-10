import 'package:drift/drift.dart';
import 'package:change_application_name/application.dart';

class SetupApplication {
  SetupApplication({
    required this.packageInfo,
    required this.connectivityResult,
    required this.setting,
  });

  final PackageInfo packageInfo;
  final List<ConnectivityResult> connectivityResult;
  final SettingTableData setting;
}

class SplashScreenPage extends AppPage {
  const SplashScreenPage({
    super.key = const Key('SplashScreenPage'),
    required this.builder,
    this.skipLoadingForWeb = true,
    this.skipWhenDebugMode = true,
    this.restorePageWhenExit = false,
    this.minimumFirstComingDuration = const Duration(milliseconds: 2400),
    this.minimumSecondComingDuration = const Duration(milliseconds: 400),
    this.firstAnimateDuration = const Duration(milliseconds: 300),
    this.secondAnimateDuration = const Duration(milliseconds: 150),
  });

  final bool skipWhenDebugMode;
  final bool skipLoadingForWeb;
  final bool restorePageWhenExit;
  final Duration minimumFirstComingDuration;
  final Duration firstAnimateDuration;
  final Duration minimumSecondComingDuration;
  final Duration secondAnimateDuration;
  final Widget Function(BuildContext context, SetupApplication setup) builder;

  @override
  State<SplashScreenPage> createState() => _SplashScreenState();

  static Future<int> updateExitFlag() =>
      AppLocalDatabase.instance.managers.settingTable.update(
        (o) => o(exited: Value(true)),
      );
}

class _SplashScreenState extends AppState<SplashScreenPage>
    with SingleTickerProviderStateMixin {
  AppThemeData get _theme {
    final brightness = MediaQuery.of(context).platformBrightness;
    return brightness == Brightness.dark
        ? AppTheme().darkTheme
        : AppTheme().lightTheme;
  }

  bool get skipLoadingForWeb =>
      widget.skipLoadingForWeb &&
      PlatformChecker.isWeb &&
      PlatformChecker.isDesktop;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: AppLocalDatabase.loadSetting(),
        builder: (context, snapshot) {
          if (snapshot.data == null) return Container(color: _theme.color.bg);

          final setting = snapshot.data!;
          final isFirstComing = (!widget.skipWhenDebugMode || !kDebugMode) &&
              (!widget.restorePageWhenExit && !setting.exited);

          return FutureBuilder(
            future: Future.wait([
              _initialLoadingApplication(setting: setting), // Must be first.
              AppLocalDatabase.instance.managers.settingTable
                  .update((o) => o(exited: Value(false))), //Clear exited field
              skipLoadingForWeb
                  ? Future.delayed(Duration.zero)
                  : isFirstComing
                      ? Future.delayed(widget.minimumFirstComingDuration)
                      : Future.delayed(widget.minimumSecondComingDuration),
            ]),
            builder: (context, snapshot) => Container(
              color: _theme.color.bg,
              child: AnimatedSwitcher(
                duration: skipLoadingForWeb
                    ? Duration.zero
                    : isFirstComing
                        ? widget.firstAnimateDuration
                        : widget.secondAnimateDuration,
                child: snapshot.data == null
                    ? _buildSplashScreen(context)
                    : widget.builder(context, snapshot.data![0]),
              ),
            ),
          );
        });
  }

  Widget _buildSplashScreen(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _theme.toThemeData(),
        home: AnnotatedRegion(
          value: _theme.systemOverlayStyle,
          child: Scaffold(
            body: Center(
              child: StackLayout(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Assets.logo.splash.svgIcon(size: 100),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SafeArea(
                      child: Padding(
                        padding: Space.insetBottom40,
                        child: AppLinearLoadingIndicator(
                          width: 100.0,
                          color: _theme.color.iconPrimary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  ///========================= PRIVATE METHOD =========================///
  Future<SetupApplication> _initialLoadingApplication({
    required SettingTableData setting,
  }) async {
    AppHttpClient.instance.setupBaseUrl(AppEnv.instance.apiBaseUrl);

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    final packageInfo = await PackageInfo.fromPlatform();
    final connectivityResult = await Connectivity().checkConnectivity();

    return SetupApplication(
      packageInfo: packageInfo,
      connectivityResult: connectivityResult,
      setting: setting,
    );
  }
}
