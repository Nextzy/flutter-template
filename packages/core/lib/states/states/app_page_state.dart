import 'package:core/lib.dart';

abstract class AppPageState<WIDGET extends AppStatefulWidget>
    extends AppState<WIDGET> with AutoRouteAware {
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
