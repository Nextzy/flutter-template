import 'package:change_application_name/application.dart';

enum HomeBlocEvent { yourEvent }

class HomePageBloc extends AppBloc<HomeBlocEvent, HomeEntity> {
  HomePageBloc();

  final ContentState<String> content1 = ContentState.initial();

  @override
  Future<void> onBlocEvent(BlocEvent<HomeBlocEvent> event) async {
    switch (event.name) {
      case HomeBlocEvent.yourEvent:
      // return _fetchStreamExample(emitter);
    }
  }
}
