import 'package:change_application_name/application.dart';

class YourStatelessWidget extends AppStatelessWidget {
  const YourStatelessWidget({
    super.key,
    super.state = FullWidgetState.normal,
  });

  @override
  Widget build(BuildContext context) {

    return ColumnLayout(
      children: [],
    );
  }
}
