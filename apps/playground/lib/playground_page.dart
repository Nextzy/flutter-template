import 'package:change_application_name/application.dart';

@RoutePage()
class PlaygroundPage extends AppStatefulWidget {
  const PlaygroundPage({super.key});

  @override
  State<PlaygroundPage> createState() => _PlaygroundState();
}

class _PlaygroundState extends AppState<PlaygroundPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildPlayground(),
      ),
    );
  }

  Widget buildPlayground() {
    //TODO: Playground code
    return ContainerLayout(
      padding: Space.insetAll20,
      child: Column(
        children: [],
      ),
    );
  }
}
