import 'package:change_application_name/application.dart';

part 'router.gr.dart';

enum AppRouteEvent { init, restart }

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
        AppRoute(
          path: '/',
          page: HomeRoute.page,
          initial: true,
        ),
        AppRoute(
          path: '/setting',
          page: SettingRoute.page,
        ),
        RedirectRoute(
          path: '*',
          redirectTo: '/',
        ),
      ];
}

class AppRouterBloc extends FalconBloc<AppRouteEvent, AppRouter> {
  AppRouterBloc() : super(_createRoute());

  AppRouter get router => state;

  @override
  Future<void> onListenEvent(
    BlocEvent<AppRouteEvent> event,
    Emitter<AppRouter> emitter,
  ) async {
    switch (event.name) {
      case AppRouteEvent.init:
        return _init(emitter);
      case AppRouteEvent.restart:
        return _restart(emitter);
    }
  }

  ///========================= PRIVATE METHOD =========================///
  Future<void> _init(Emitter<AppRouter> emitter) async {
    //TODO: Implement init deeplink
  }

  Future<void> _restart(Emitter<AppRouter> emitter) async {
    emitter(_createRoute());
  }

  ///========================= STATIC METHOD =========================///
  static AppRouter _createRoute() => AppRouter(
        navigatorKey: Catcher.navigatorKey,
      );
}
