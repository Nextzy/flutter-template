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

class _YourWidgetStateEvent extends AppBlocWidgetState<YourStatefulWidget,
    YourEntity, YourBloc> {
  void _listenEvent(
      BuildContext context, YourStatefulWidgetEvent event, Object? data) {
    switch (event) {
      case YourStatefulWidgetEvent.yourEvent:
        break;
      default:
        super.listenEvent(context, event, data);
    }
  }

  @override
  Widget build(BuildContext context) => //
      buildWithBloc<YourStatefulWidgetEvent>(
        listenEvent: _listenEvent,
        builder: (context, state) {
          // TODO: implement buildBody
          throw UnimplementedError();
        },
      );
}
