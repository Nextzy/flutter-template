import 'package:change_application_name/application.dart';

class YourStatefulWidget extends AppStatefulWidget {
  const YourStatefulWidget({
    key,
  }) : super(key: key);

  @override
  State<YourStatefulWidget> createState() => _YourWidgetState();
}

class _YourWidgetState extends AppState<YourStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return ColumnLayout(
      children: [],
    );
  }
}
