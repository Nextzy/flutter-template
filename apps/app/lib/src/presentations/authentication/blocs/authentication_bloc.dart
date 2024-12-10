import 'package:change_application_name/application.dart';

enum AuthenticationEvent { yourEvent }

class AuthenticationBloc extends AppBloc<AuthenticationEvent, YourEntity> {
  AuthenticationBloc({
    YourRepository? yourRepo,
  }) : _yourRepo = yourRepo ?? YourRepositoryImpl();

  final YourRepository _yourRepo;

  @override
  Future<void> onListenEvent(
    BlocEvent<AuthenticationEvent> event,
    Emitter<WidgetStateEvent<YourEntity?>> emitter,
  ) async {
    switch (event.name) {
      case AuthenticationEvent.yourEvent:
        break;
    }
  }

// void _yourMethod() => fetch<BlocState<YourModel?>>(
//       key: YourEvent.yourEvent,
//       call: _yourRepo.method(),
//       onFetch: (blocState) async {
//         if (blocState.isLoading()) {
//           blocState
//               .mapData((data) => state.data) //
//               .emit(this);
//         }
//         if (blocState.isError()) {
//           blocState
//               .mapData((data) => state.data) //
//               .emit(this);
//         }
//         if (blocState.isSuccess()) {
//           emitState(resource);
//         }
//       },
//       onError: (error, stacktrace) {},
//     );
}
