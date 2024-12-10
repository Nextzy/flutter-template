import 'package:core/lib.dart';

abstract class AppPageListViewBlocState<WIDGET extends StatefulWidget, DATA,
        BLOC extends BlocBase<WidgetStateEvent<DATA?>>>
    extends AppPageScaffoldBlocWidgetState<WIDGET, DATA, BLOC> {
  int get itemCount;

  Widget buildScaffoldItemListWithBloc<EVENT>({
    BlocWidgetListenerEvent<EVENT>? listenEvent,
    BlocWidgetListenerState<WidgetStateEvent<DATA?>>? listenState,
    Function(WidgetStateEvent<DATA?> state)? canPop,
    PopListener<WidgetStateEvent<DATA?>>? onPop,
    BlocListenerCondition<WidgetStateEvent<DATA?>>? buildWhen,
    Widget Function(BuildContext context, WidgetStateEvent<DATA?> state)? buildDrawer,
    Widget Function(BuildContext context, WidgetStateEvent<DATA?> state)?
        buildBottomNavigationBar,
    PreferredSizeWidget? Function(BuildContext context, WidgetStateEvent<DATA?> state)?
        buildAppBar,
    required Widget? Function(BuildContext context, int index, WidgetStateEvent<DATA?> state)
        itemBuilder,
    Widget Function(BuildContext context, WidgetStateEvent<DATA?> state)? buildFloatingButton,
  }) {
    return buildScaffoldWithBloc(
      listenEvent: listenEvent,
      listenState: listenState,
      canPop: canPop,
      onPop: onPop,
      buildWhen: buildWhen,
      buildDrawer: buildDrawer,
      buildBottomNavigationBar: buildBottomNavigationBar,
      buildAppBar: buildAppBar,
      buildFloatingButton: buildFloatingButton,
      buildBody: (context, state) => AppListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) => itemBuilder(context, index, state),
      ),
    );
  }
}
