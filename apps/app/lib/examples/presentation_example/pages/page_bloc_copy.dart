import 'package:change_application_name/application.dart';

enum YourScreenEvent {
  yourEvent,
}

class YourBlocPage extends AppPage {
  const YourBlocPage._({required Key key}) : super(key: key);

  static const String name = 'YourBlocPage';

  static Widget create() => //
      BlocProvider(
        create: (context) => YourBloc(),
        child: const YourBlocPage._(
          key: Key(name),
        ),
      );

  @override
  State<YourBlocPage> createState() => _YourBlocScreenState();
}

class _YourBlocScreenState
    extends AppPageBlocWidgetState<YourBlocPage, YourEntity, YourBloc> {

  void listenEvent(BuildContext context, YourScreenEvent event, Object? data) {
    switch (event) {
      case YourScreenEvent.yourEvent:
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    bloc.addEvent(YourEvent.yourEvent);
  }

  @override
  Widget build(BuildContext context) => //
      buildScaffoldWithBloc<YourScreenEvent>(
        listenEvent: listenEvent,
        body: (context, state) =>
            // TODO: implement buildBody
            throw UnimplementedError(),
      );
}
