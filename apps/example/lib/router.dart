import 'package:example_app/application.dart';

part 'router.gr.dart';

enum ExampleRouteEvent { init, restart }

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class ExampleRouter extends RootStackRouter {
  ExampleRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
        AppRoute(path: '/', page: HomeRoute.page, initial: true),
        AppRoute(path: '/messenger', page: MessengerRoute.page),
        AppRoute(path: '/ecommerce', page: EcommerceRoute.page),
        AppRoute(path: '/web3', page: Web3Route.page),
        AppRoute(path: '/kanban', page: KanbanRoute.page),
        AppRoute(path: '/signup', page: SignupRoute.page),
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}

class ExampleRouterBloc
    extends FalconEventBloc<ExampleRouteEvent, ExampleRouter> {
  ExampleRouterBloc() : super(_createRoute());

  ExampleRouter get router => state;

  @override
  Future<void> onBlocEvent(BlocEvent<ExampleRouteEvent> event) async {
    switch (event.name) {
      case ExampleRouteEvent.init:
        return _init();
      case ExampleRouteEvent.restart:
        return _restart();
    }
  }

  Future<void> _init() async {}

  Future<void> _restart() async {
    emitter(_createRoute());
  }

  static ExampleRouter _createRoute() => ExampleRouter(
        navigatorKey: Catcher.navigatorKey,
      );
}
