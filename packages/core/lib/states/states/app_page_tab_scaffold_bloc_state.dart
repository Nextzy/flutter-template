import 'package:core/lib.dart';

abstract class AppPageTabScaffoldBlocWidgetState<
    WIDGET extends StatefulWidget,
    BLOC extends BlocBase<WidgetStateEvent<DATA?>>,
    DATA> extends AppPageBlocWidgetState<WIDGET, BLOC, DATA> {
  int get initialIndex;

  Widget buildScaffoldItemListWithBloc<EVENT>({
    BlocWidgetListenerEvent<EVENT>? listenEvent,
    BlocWidgetListenerState<WidgetStateEvent<DATA?>>? listenState,
    WidgetStateCallback<DATA>? canPop,
    PopListener<WidgetStateEvent<DATA?>>? onPop,
    BlocListenerCondition<WidgetStateEvent<DATA?>>? buildWhen,
    WidgetStateContextCallback<DATA>? drawer,
    WidgetStateContextCallback<DATA>? buildBottomNavigationBar,
    PreferredWidgetStateContextCallback<DATA>? appBar,
    required ListWidgetStateContextCallback<DATA> buildTab,
    required WidgetStateContextCallback<DATA> body,
    WidgetBuilder? failNoData,
    WidgetBuilder? warningNoData,
    WidgetBuilder? loadingNoData,
    WidgetStateContextCallback<DATA>? floatingButton,
  }) {
    return BlocConsumer<BLOC, WidgetStateEvent<DATA?>>(
      bloc: bloc,
      listener: (BuildContext context, WidgetStateEvent<DATA?> state) {
        if (state.event != null) {
          listenEvent?.call(
              context, state.event!.name as EVENT, state.event!.data);
        } else {
          listenState?.call(context, state);
        }
      },
      listenWhen: (previous, current) => true,
      buildWhen: (previous, current) {
        if (current.event != null) {
          return false;
        } else if (current.event == null) {
          // No event in current state
          return current.build;
        } else {
          return buildWhen?.call(previous, current) ?? true;
        }
      },
      builder: (context, state) {
        List<Widget> tabScreenList = buildTab(context, state);

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
                    (state.isFail && !state.hasData)
                        ? failNoData?.call(context) ?? body(context, state)
                        : (state.isWarning && !state.hasData)
                            ? warningNoData?.call(context) ??
                                body(context, state)
                            : (state.isLoading && !state.hasData)
                                ? loadingNoData?.call(context) ??
                                    body(context, state)
                                : body(context, state),
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
