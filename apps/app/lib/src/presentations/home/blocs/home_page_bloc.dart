import 'package:change_application_name/application.dart';

enum HomeBlocEvent { yourEvent }

class HomePageBloc extends AppBloc<HomeBlocEvent, HomeEntity> {
  HomePageBloc({
    YourRepository? yourRepo,
  }) : _yourRepo = yourRepo ?? YourRepositoryImpl();

  final YourRepository _yourRepo;

  final ContentState<String> content1 = ContentState.initial();

  @override
  Future<void> onListenEvent(
    BlocEvent<HomeBlocEvent> event,
    Emitter<WidgetStateEvent<HomeEntity?>> emitter,
  ) async {
    switch (event.name) {
      case HomeBlocEvent.yourEvent:
      // return _fetchStreamExample(emitter);
    }
  }

  Future<void> _fetchStreamExample() => callEitherStreamDebounce(
        key: HomeBlocEvent.yourEvent,
        call: HomeUsecase()(),
        debounceFetch: true,
        onData: (emitter, state) {
          if (state.isLoading) {
            emitLoading(data);
          } else if (state.isSuccess) {
            emitSuccess(data);
          }
        },
        onFailure: (emitter, failure) {
          emitFail();
        },
      );

  Future<void> _fetchFutureExample() => callEitherFutureDebounce(
        key: HomeBlocEvent.yourEvent,
        call: _yourRepo.getYourServiceFuture(),
        debounceFetch: true,
        onData: (emitter, state) {},
        onFailure: (emitter, failure) {},
      );

  Future<void> _fetchFutureExample2() async {
     _yourRepo.getYourServiceFuture().resolve(
      (String data) {
        emitSuccess(state.data);
      },
      (Failure fail) {
        emitEvent(HomePageEvent.yourEvent);
      },
    );
  }
}
