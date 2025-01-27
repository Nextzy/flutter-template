import 'package:change_application_name/application.dart';
import 'package:tutorial/tutorial.dart';

enum ExampleMovie2PageBlocEvent {
  fetchMovieList,
}

class ExampleMovie2PageBlocSafe
    extends AppBlocSafe<ExampleMovie2PageBlocEvent, dynamic> {
  ExampleMovie2PageBlocSafe(
    super.initialState, {
    ExampleGetMovieListUsecase? movieListUsecase,
  }) : _movieListUsecase = movieListUsecase ?? ExampleGetMovieListUsecase();

  final ExampleGetMovieListUsecase _movieListUsecase;

  /// ⭐️ You can use ContentState when bloc have more than 1 source
  final ContentState<Iterable<MovieEntity>> highLightMovieList =
      ContentState.initial();
  final ContentState<Iterable<MovieEntity>> trendMovieList =
      ContentState.initial();
  final ContentState<Iterable<MovieEntity>> mustWatchMovieList =
      ContentState.initial();

  @override
  Future<void> onBlocEvent(
    BlocEvent<ExampleMovie2PageBlocEvent> event,
  ) async {
    switch (event.name) {
      case ExampleMovie2PageBlocEvent.fetchMovieList:
        return _fetchMovieList();
    }
  }

  Future<void> _fetchMovieList() => callEitherStreamDebounce(
        key: ExampleMovie2PageBlocEvent.fetchMovieList,
        call: _movieListUsecase(),
        onData: (emitter, state) {
          if (state.isLoading) {
            highLightMovieList.loading();
            trendMovieList.loading();
            mustWatchMovieList.loading();
          } else if (state.isSuccess) {
            highLightMovieList.success(state.data?.movieList.where(
              (movie) => movie.name == 'High light',
            ));
            trendMovieList.success(state.data?.movieList.where(
              (movie) => movie.name == 'Trend',
            ));
            mustWatchMovieList.success(state.data?.movieList.where(
              (movie) => movie.name == 'Must watch',
            ));
          }
        },
        onFailure: (emitter, failure) {
          emitEvent(AppDialogEvent.dismissAll);
          emitFail();
        },
      );
}
