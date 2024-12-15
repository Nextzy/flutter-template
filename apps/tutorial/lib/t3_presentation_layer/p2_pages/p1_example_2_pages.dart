import 'package:change_application_name/application.dart';
import 'package:tutorial/tutorial.dart';

enum ExampleMoviePageEvent {
  showFail,
}

@RoutePage()
class ExampleMoviePage extends AppPage implements AutoRouteWrapper {
  const ExampleMoviePage({
    super.key,
    required this.movieList,
  });

  final MovieListEntity movieList;

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        /// ⭐️ Safe it's mean, you have to initial the data first
        create: (context) => ExampleMoviePageBlocSafe(movieList)

          /// ⭐️ Send fetch event to bloc for load movie list
          ..addEvent(ExampleMoviePageBlocEvent.fetchMovieList),
        child: this,
      );

  @override
  State<ExampleMoviePage> createState() => _ExampleMoviePageState();
}

class _ExampleMoviePageState extends AppPageBlocWidgetState<
    ExampleMoviePage,
    ExampleMoviePageBlocSafe,

    /// ⭐️ Safe it's mean, the data is non-null
    MovieListEntity> {
  void onListenerEvent(
    BuildContext context,
    ExampleMoviePageEvent event,
    Object? data,
  ) {
    switch (event) {
      case ExampleMoviePageEvent.showFail:
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }

  @override
  Widget build(BuildContext context) {
    /// ⭐️ Please add type of page event
    return buildScaffoldWithBloc<ExampleMoviePageEvent>(
      listenEvent: onListenerEvent,
      body: (context, state) {
        if (state.isLoading) return AppCircularLoading();
        if (state.isFail) return AppEmpty();

        return TodoView.create(todo: '');
      },
    );
  }
}
