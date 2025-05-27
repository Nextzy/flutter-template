import 'package:change_application_name/application.dart';
import 'package:tutorial/tutorial.dart';

enum ExampleMovie2PageBlocEvent {
  fetchMovieList,
}

class ExampleMovie2PageBlocSafe
    extends AppWidgetStateBloc<ExampleMovie2PageBlocEvent, dynamic> {
  ExampleMovie2PageBlocSafe(
    super.initialState, {
    ExampleGetMovieListUsecase? movieListUsecase,
  }) : _movieListUsecase = movieListUsecase ?? ExampleGetMovieListUsecase();

  final ExampleGetMovieListUsecase _movieListUsecase;

  /// ⭐️ You can use ContentState when bloc have more than 1 source
  final NullableContentState<Iterable<MovieEntity>> highLightMovieList =
      NullableContentState.initial();
  final NullableContentState<Iterable<MovieEntity>> trendMovieList =
      NullableContentState.initial();
  final NullableContentState<Iterable<MovieEntity>> mustWatchMovieList =
      NullableContentState.initial();

  @override
  Future<void> onBlocEvent(
    BlocEvent<ExampleMovie2PageBlocEvent> event,
  ) async {
    switch (event.name) {
      case ExampleMovie2PageBlocEvent.fetchMovieList:
        return _fetchMovieList();
    }
  }

  Future<void> _fetchMovieList() => callEitherStream(
        key: ExampleMovie2PageBlocEvent.fetchMovieList,
        call: _movieListUsecase(),
        onData: (state) {
          if (state.isLoading) {
            highLightMovieList.loading();
            trendMovieList.loading();
            mustWatchMovieList.loading();
          } else if (state.isSuccess) {
            highLightMovieList.success(data: state.data?.movieList.where(
              (movie) => movie.name == 'High light',
            ));
            trendMovieList.success(data: state.data?.movieList.where(
              (movie) => movie.name == 'Trend',
            ));
            mustWatchMovieList.success(data: state.data?.movieList.where(
              (movie) => movie.name == 'Must watch',
            ));
          }
        },
        onFailure: (failure) {
          emitEvent(AppDialogEvent.dismissAll);
          emitFail();
        },
      );
}
