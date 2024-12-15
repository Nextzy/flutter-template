import 'package:change_application_name/application.dart';
import 'package:tutorial/tutorial.dart';

enum ExampleAuthenticationPageEvent {
  showFail,
}

@RoutePage()
class ExampleAuthenticationPage extends AppPage implements AutoRouteWrapper {
  const ExampleAuthenticationPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => ExampleAuthenticationPageBloc(),
        child: this,
      );

  @override
  State<ExampleAuthenticationPage> createState() =>
      _ExampleAuthenticationPageState();
}

class _ExampleAuthenticationPageState extends AppPageBlocWidgetState<
    ExampleAuthenticationPage, ExampleAuthenticationPageBloc, bool?> {
  void onListenerEvent(
    BuildContext context,
    ExampleAuthenticationPageEvent event,
    Object? data,
  ) {
    switch (event) {
      case ExampleAuthenticationPageEvent.showFail:
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }

  @override
  Widget build(BuildContext context) {
    /// ⭐️ Please add type of page event
    return buildScaffoldWithBloc<ExampleAuthenticationPageEvent>(
      listenEvent: onListenerEvent,
      body: (context, state) {
        if (state.isLoading) return AppCircularLoading();
        if (state.isFail) return AppEmpty();

        return TodoView.create(todo: '');
      },
    );
  }
}
