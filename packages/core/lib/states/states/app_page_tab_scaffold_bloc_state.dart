import 'package:core/lib.dart';

abstract class AppPageTabScaffoldBlocWidgetState<
    WIDGET extends StatefulWidget,
    BLOC extends BlocBase<WidgetDataState<DATA>>,
    DATA> extends AppPageBlocWidgetState<WIDGET, BLOC, DATA> {
  int get initialIndex;

  Widget buildScaffoldItemListWithBloc({
    BlocWidgetListenerEvent<Object>? listenEvent,
    BlocWidgetListenerState<WidgetDataState<DATA?>>? listenState,
    PopStateCallback<DATA?>? canPop,
    PopListener<WidgetDataState<DATA?>>? onPop,
    BlocListenerCondition<WidgetDataState<DATA?>>? buildWhen,
    WidgetStateContextCallback<DATA?>? drawer,
    WidgetStateContextCallback<DATA?>? buildBottomNavigationBar,
    PreferredWidgetStateContextCallback<DATA?>? appBar,
    required ListWidgetStateContextCallback<DATA?> buildTab,
    required WidgetStateContextCallback<DATA?> body,
    WidgetBuilder? bodyEmpty,
    WidgetBuilder? bodyWarning,
    WidgetBuilder? bodyLoading,
    WidgetBuilder? bodyFail,
    WidgetStateContextCallback<DATA?>? floatingButton,
  }) {
    return buildScaffoldWithBloc(
      listenEvent: listenEvent,
      listenState: listenState,
      canPop: canPop,
      onPop: onPop,
      buildWhen: buildWhen,
      drawer: drawer,
      bottomNavigationBar: buildBottomNavigationBar,
      appBar: appBar,
      floatingButton: floatingButton,
      body: (context, state) {
        final tabScreenList = buildTab(context, state);
        return GestureDetector(
          onTap: clearFocus,
          child: buildPopScope(
            state: state,
            canPop: canPop,
            onPop: onPop,
            child: DefaultTabController(
              length: tabScreenList.length,
              initialIndex: initialIndex,
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                drawer: drawer?.call(context, state),
                bottomNavigationBar:
                    buildBottomNavigationBar?.call(context, state),
                appBar: appBar?.call(context, state),
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TabBarView(children: tabScreenList),
                    if (state.isFail && bodyFail != null)
                      bodyFail(context)
                    else if (state.isWarning && bodyWarning != null)
                      bodyWarning(context)
                    else if (state.isLoading && bodyLoading != null)
                      bodyLoading(context)
                    else if (state.noData && bodyEmpty != null)
                      bodyEmpty(context)
                    else
                      body(context, state),
                  ],
                ),
                floatingActionButton: floatingButton?.call(context, state),
              ),
            ),
          ),
        );
      },
    );
  }
}
