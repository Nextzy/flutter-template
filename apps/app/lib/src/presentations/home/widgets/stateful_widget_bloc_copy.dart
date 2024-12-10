import 'package:change_application_name/application.dart';

class YourStatefulWidget extends AppStatefulWidget {
  const YourStatefulWidget({
    super.key,
  });

  @override
  State<YourStatefulWidget> createState() => _YourWidgetStateEvent();
}

class _YourWidgetStateEvent
    extends AppBlocWidgetState<YourStatefulWidget, YourEntity, YourBloc> {
  @override
  Widget build(BuildContext context) => //
      buildWithBloc(
        builder: (context, state) {
          // TODO: implement buildBody
          throw UnimplementedError();
        },
      );
}
