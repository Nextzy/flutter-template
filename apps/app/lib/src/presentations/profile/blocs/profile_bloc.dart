import 'package:change_application_name/application.dart';

enum ProfileEvent { yourEvent }

class ProfileBloc extends AppBloc<ProfileEvent, YourEntity> {
  ProfileBloc({
    YourRepository? yourRepo,
  })  : _yourRepo = yourRepo ?? YourRepositoryImpl();

  final YourRepository _yourRepo;

  @override
  Future<void> onListenEvent(
    BlocEvent<ProfileEvent> event,
    Emitter<WidgetStateEvent<YourEntity?>> emitter,
  ) async {
    switch (event.name) {
      case ProfileEvent.yourEvent:
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
