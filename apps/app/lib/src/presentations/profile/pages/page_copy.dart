import 'package:change_application_name/application.dart';

class YourPage extends AppPage {
  const YourPage._({required Key key}) : super(key: key);

  static Widget create() => const YourPage._(key: Key('YourPage'));

  @override
  State<YourPage> createState() => _YourPageState();
}

class _YourPageState extends AppPageState<YourPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
