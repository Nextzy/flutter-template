import 'package:core/lib.dart';

abstract class AppPageScaffoldBlocWidgetState<WIDGET extends StatefulWidget, DATA,
        BLOC extends BlocBase<WidgetStateEvent<DATA?>>>
    extends AppPageBlocWidgetState<WIDGET, DATA, BLOC> {
  Widget buildScaffoldWithBloc<EVENT>({
    BlocWidgetListenerEvent<EVENT>? listenEvent,
    BlocWidgetListenerState<WidgetStateEvent<DATA?>>? listenState,
    Function(WidgetStateEvent<DATA?> state)? canPop,
    PopListener<WidgetStateEvent<DATA?>>? onPop,
    BlocListenerCondition<WidgetStateEvent<DATA?>>? buildWhen,
    Widget Function(BuildContext context, WidgetStateEvent<DATA?> state)?
        buildDrawer,
    Widget Function(BuildContext context, WidgetStateEvent<DATA?> state)?
        buildBottomNavigationBar,
    PreferredSizeWidget? Function(
            BuildContext context, WidgetStateEvent<DATA?> state)?
        buildAppBar,
    required Widget Function(
            BuildContext context, WidgetStateEvent<DATA?> state)
        buildBody,
    Widget Function(BuildContext context, WidgetStateEvent<DATA?> state)?
        buildFloatingButton,
  }) {
    return BlocConsumer<BLOC, WidgetStateEvent<DATA?>>(
      bloc: bloc,
      listener: (BuildContext context, WidgetStateEvent<DATA?> state) {
        if (state.event != null) {
          listenEvent?.call(
              context, state.event!.name as EVENT, state.event!.data);
        }

        listenState?.call(context, state);
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
      builder: (context, state) => GestureDetector(
        onTap: clearFocus,
        child: buildPopScope(
          state: state,
          canPop: canPop,
          onPop: onPop,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            drawer: buildDrawer?.call(context, state),
            bottomNavigationBar: buildBottomNavigationBar?.call(context, state),
            appBar: buildAppBar?.call(context, state),
            body: buildBody(context, state),
            floatingActionButton: buildFloatingButton?.call(context, state),
          ),
        ),
      ),
    );
  }
}
