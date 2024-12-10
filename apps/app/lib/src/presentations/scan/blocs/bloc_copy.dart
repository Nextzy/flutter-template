import 'package:change_application_name/application.dart';

enum ScanPageBlocEvent { yourEvent }

class ScanPageBloc extends AppBloc<ScanPageBlocEvent, YourEntity> {
  ScanPageBloc({
    YourRepository? yourRepo,
  })  : _yourRepo = yourRepo ?? YourRepositoryImpl();

  final YourRepository _yourRepo;

  @override
  Future<void> onListenEvent(
    BlocEvent<ScanPageBlocEvent> event,
    Emitter<WidgetStateEvent<YourEntity?>> emitter,
  ) async {
    switch (event.name) {
      case ScanPageBlocEvent.yourEvent:
        break;
    }
  }

}
