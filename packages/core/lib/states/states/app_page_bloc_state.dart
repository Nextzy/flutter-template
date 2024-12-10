import 'package:core/lib.dart';

abstract class AppPageBlocWidgetState<WIDGET extends StatefulWidget, DATA,
        BLOC extends BlocBase<WidgetStateEvent<DATA?>>>
    extends AppBlocWidgetState<WIDGET, DATA, BLOC> with AutoRouteAware {
  AutoRouteObserver? _observer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    try {
      _observer =
          RouterScope.of(context).firstObserverOfType<AutoRouteObserver>();
    } catch (_) {
      _observer = null;
    }
    _observer?.subscribe(this, context.routeData);
  }

  @override
  void dispose() {
    super.dispose();
    _observer?.unsubscribe(this);
  }
}
