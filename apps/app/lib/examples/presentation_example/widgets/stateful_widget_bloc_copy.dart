import 'package:change_application_name/application.dart';

enum YourStatefulWidgetEvent {
  yourEvent,
}

class YourStatefulWidget extends AppStatefulWidget {
  const YourStatefulWidget({
    key,
  }) : super(key: key);

  @override
  State<YourStatefulWidget> createState() => _YourWidgetStateEvent();
}

class _YourWidgetStateEvent
    extends AppBlocWidgetState<YourStatefulWidget, YourEntity, YourBloc> {
  void listenEvent(
      BuildContext context, YourStatefulWidgetEvent event, Object? data) {
    switch (event) {
      case YourStatefulWidgetEvent.yourEvent:
        break;
    }
  }

  @override
  Widget build(BuildContext context) => //
      buildWithBloc<YourStatefulWidgetEvent>(
        listenEvent: listenEvent,
        builder: (context, state) {
          // TODO: implement buildBody
          throw UnimplementedError();
        },
      );
}
