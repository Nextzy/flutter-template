import 'package:change_application_name/application.dart';
import 'package:tutorial/tutorial.dart';

enum ExampleAuthenticationPageBlocEvent {
  tapSignIn,
}

class ExampleAuthenticationPageBloc
    extends AppBloc<ExampleAuthenticationPageBlocEvent, bool> {
  ExampleAuthenticationPageBloc({
    ExampleSignInWithEmailAndPasswordUsecase? signInUsecase,
  }) : _signInUsecase =
            signInUsecase ?? ExampleSignInWithEmailAndPasswordUsecase();

  final ExampleSignInWithEmailAndPasswordUsecase _signInUsecase;

  @override
  Future<void> onListenEvent(
    BlocEvent<ExampleAuthenticationPageBlocEvent> event,

    /// ⭐️ The data in WidgetStateEvent is nullable
    Emitter<WidgetStateEvent<bool?>> emitter,
  ) async {
    switch (event.name) {
      case ExampleAuthenticationPageBlocEvent.tapSignIn:
        final data = event.data as ({String email, String password});
        return _signInWithEmailAndPassword(
          email: data.email,
          password: data.password,
        );
    }
  }

  Future<void> _signInWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      callEitherStreamDebounce(
        key: ExampleAuthenticationPageBlocEvent.tapSignIn,
        call: _signInUsecase(email: email, password: password),
        onData: (emitter, state) {
          if (state.isLoading) {
            emitEvent(AppDialogEvent.showFullLoadingLocked);
            emitLoading();
          } else if (state.isSuccess) {
            emitSuccess(true);
          }
        },
        onFailure: (emitter, failure) {
          emitEvent(AppDialogEvent.dismissAll);
          emitFail(false);
        },
      );
}

enum ExampleMoviePageBlocEvent {
  fetchMovieList,
}

class ExampleMoviePageBlocSafe
    extends AppBlocSafe<ExampleMoviePageBlocEvent, MovieListEntity> {
  ExampleMoviePageBlocSafe(
    /// ⭐️ Safe it's mean, you have to initial the data first
    /// Case 1: Pass the non-null object to this bloc from previous page.
    /// Benefit: Page will not handle null case.

    super.initialState, {
    ExampleGetMovieListUsecase? movieListUsecase,
  }) : _movieListUsecase = movieListUsecase ?? ExampleGetMovieListUsecase();

  final ExampleGetMovieListUsecase _movieListUsecase;

  @override
  Future<void> onListenEvent(
    BlocEvent<ExampleMoviePageBlocEvent> event,

    /// ⭐️ Safe it's mean, the data in WidgetStateEvent isn't nullable
    Emitter<WidgetStateEvent<MovieListEntity>> emitter,
  ) async {
    switch (event.name) {
      case ExampleMoviePageBlocEvent.fetchMovieList:
        return _fetchMovieList();
    }
  }

  Future<void> _fetchMovieList() => callEitherStreamDebounce(
        key: ExampleMoviePageBlocEvent.fetchMovieList,
        call: _movieListUsecase(),
        onData: (emitter, state) {
          if (state.isLoading) {
            emitEvent(AppDialogEvent.showFullLoadingLocked);
            emitLoading(state.data);
          } else if (state.isSuccess) {
            emitSuccess(state.data);
          }
        },
        onFailure: (emitter, failure) {
          emitEvent(AppDialogEvent.dismissAll);
          emitFail();
        },
      );
}
