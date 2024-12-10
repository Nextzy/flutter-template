import 'package:change_application_name/application.dart';

enum YourEvent { yourEvent }

class YourBloc extends AppBloc<YourEvent, YourEntity> {
  YourBloc({
    YourUsecase? usecase,
  }) : _usecase = usecase ?? YourUsecase();

  final YourUsecase _usecase;

  @override
  Future<void> onListenEvent(
    BlocEvent<YourEvent> event,
    Emitter<WidgetStateEvent<YourEntity?>> emitter,
  ) async {
    switch (event.name) {
      case YourEvent.yourEvent:
        await _onExample(emitter, data: event.data!);
        break;
    }
  }

  Future<void> _onExample(
    Emitter<WidgetStateEvent<YourEntity?>> emitter, {
    required Object data,
  }) async {
    emitter.emit(state);
  }

  Future<void> _loadAll(Emitter<WidgetStateEvent<YourEntity?>> emitter) =>
      emitter.callStream(
        call: fetchEitherStream(
          key: YourEvent.yourEvent,
          call: _usecase.call(),
        ),
        onData: (emitter, state) {
          emitter.emit(state);
          if (state.isLoading) {
            // Prevent null data when loading state.
            // emitter.emitLoading(data);
            // emitter.emit(this.state.toLoading());
          } else if (state.isSuccess) {
            // emitter.emitSuccess(state.data);
            // emitter.emit(this.state.toSuccess(data: state.data));
          }
        },
        onFailure: (emitter, failure) {
          emitter.emit(state.toFail());
        },
      );

  // Future<void> _fetchFutureExample(
  //     Emitter<WidgetStateEvent<HomeEntity?>> emitter) =>
  //     emitter.callStream(
  //       call: fetchEitherFuture(
  //         key: HomeBlocEvent.yourEvent,
  //         call: _yourRepo.getYourServiceFuture(),
  //         debounceFetch: true,
  //       ),
  //       onData: (emitter, state) {},
  //       onFailure: (emitter, failure) {},
  //     );
  //
  // Future<void> _fetchFutureExample2(
  //     Emitter<WidgetStateEvent<HomeEntity?>> emitter) async {
  //   _yourRepo.getYourServiceFuture().resolve(
  //         (String data) {
  //       emitter.emit(state);
  //     },
  //         (Failure fail) {
  //       emitter.emit(state.addEvent(HomePageEvent.yourEvent));
  //     },
  //   );
  // }
}
