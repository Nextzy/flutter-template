import 'package:core/lib.dart';

abstract class AppPageBlocWidgetState<WIDGET extends StatefulWidget,
        BLOC extends BlocBase<WidgetDataState<DATA>>, DATA>
    extends AppNullableWidgetBlocState<WIDGET, BLOC, DATA> with AutoRouteAware {
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

  Widget buildScaffoldWithBloc({
    BlocWidgetListenerEvent<Object>? listenEvent,
    BlocWidgetListenerState<WidgetDataState<DATA?>>? listenState,
    PopStateCallback<DATA?>? canPop,
    PopListener<WidgetDataState<DATA?>>? onPop,
    BlocListenerCondition<WidgetDataState<DATA?>>? buildWhen,
    WidgetStateContextCallback<DATA?>? drawer,
    WidgetStateContextCallback<DATA?>? bottomNavigationBar,
    PreferredWidgetStateContextCallback<DATA?>? appBar,
    required WidgetStateContextCallback<DATA?> body,
    WidgetBuilder? bodyEmpty,
    WidgetBuilder? bodyWarning,
    WidgetBuilder? bodyLoading,
    WidgetBuilder? bodyFail,
    WidgetStateContextCallback<DATA?>? floatingButton,
  }) {
    return WidgetStateBlocConsumer<BLOC, DATA>(
      bloc: bloc,
      listenEvent: (BuildContext context, Object event, Object? data) {
        switch (event) {
          case AppDialogEvent.showFullLoadingLocked:
            AppLoadingDialog.showFullLoadingLocked(context);
          case AppDialogEvent.dismissAll:
            AppLoadingDialog.dismissAll(context);
          case _:
            listenEvent?.call(context, event, data);
        }
      },
      listenState: listenState,
      buildWhen: buildWhen,
      builder: (context, state) => GestureDetector(
        onTap: clearFocus,
        child: buildPopScope(
          state: state,
          canPop: canPop,
          onPop: onPop,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            drawer: drawer?.call(context, state),
            bottomNavigationBar: bottomNavigationBar?.call(context, state),
            appBar: appBar?.call(context, state),
            body: (state.isFail && bodyFail != null)
                ? bodyFail(context)
                : (state.isWarning && bodyWarning != null)
                    ? bodyWarning(context)
                    : (state.isLoading && bodyLoading != null)
                        ? bodyLoading(context)
                        : (state.noData && bodyEmpty != null)
                            ? bodyEmpty(context)
                            : body(context, state),
            floatingActionButton: floatingButton?.call(context, state),
          ),
        ),
      ),
    );
  }
}
