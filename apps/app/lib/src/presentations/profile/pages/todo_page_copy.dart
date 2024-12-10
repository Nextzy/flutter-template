import 'package:change_application_name/application.dart';


class YourTodoPage extends AppPage {
  const YourTodoPage._({required Key key}) : super(key: key);

  static Widget create() => const YourTodoPage._(key: Key('YourPage'));

  @override
  State<YourTodoPage> createState() => _YourPageState();
}

class _YourPageState extends AppPageState<YourTodoPage> {
  @override
  Widget build(BuildContext context) {
    return TodoView.create(todo: TodoFeature.authentication);
  }
}
