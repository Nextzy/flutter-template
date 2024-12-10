import 'package:core/lib.dart';

abstract class AppPageScaffoldState<WIDGET extends AppStatefulWidget>
    extends AppState<WIDGET> {
  Widget buildScaffold<EVENT>({
    bool canPop = true,
    Function(BuildContext context)? onPop,
    Widget Function(BuildContext context)? buildDrawer,
    Widget Function(BuildContext context)? buildBottomNavigationBar,
    PreferredSizeWidget? Function(BuildContext context)? buildAppBar,
    required Widget Function(BuildContext context) buildBody,
    Widget Function(BuildContext context)? buildFloatingButton,
  }) {
    return GestureDetector(
      onTap: clearFocus,
      child: buildPopScope(
        canPop: canPop,
        onPop: onPop,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          drawer: buildDrawer?.call(context),
          bottomNavigationBar: buildBottomNavigationBar?.call(context),
          appBar: buildAppBar?.call(context),
          body: buildBody(context),
          floatingActionButton: buildFloatingButton?.call(context),
        ),
      ),
    );
  }
}
