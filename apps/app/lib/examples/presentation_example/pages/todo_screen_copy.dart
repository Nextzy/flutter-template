import 'package:change_application_name/application.dart';

class YourTodoPage extends AppPage {
  const YourTodoPage({super.key});

  @override
  State<YourTodoPage> createState() => _YourPageState();
}

class _YourPageState extends AppPageState<YourTodoPage> {
  @override
  Widget build(BuildContext context) {
    return TodoView.create(todo: TodoFeature.authentication);
  }
}
