import 'package:example_app/application.dart';

@RoutePage()
class StreamingPage extends AppPage {
  const StreamingPage({super.key});

  @override
  State<StreamingPage> createState() => _StreamingPageState();
}

class _StreamingPageState extends AppPageState<StreamingPage> {
  @override
  Widget build(BuildContext context) {
    return ContainerLayout();
  }
}
