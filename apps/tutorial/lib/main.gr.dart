// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'main.dart';

/// generated route for
/// [ExampleAuthenticationPage]
class ExampleAuthenticationRoute
    extends PageRouteInfo<ExampleAuthenticationRouteArgs> {
  ExampleAuthenticationRoute({dynamic key, List<PageRouteInfo>? children})
    : super(
        ExampleAuthenticationRoute.name,
        args: ExampleAuthenticationRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'ExampleAuthenticationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ExampleAuthenticationRouteArgs>(
        orElse: () => const ExampleAuthenticationRouteArgs(),
      );
      return WrappedRoute(child: ExampleAuthenticationPage(key: args.key));
    },
  );
}

class ExampleAuthenticationRouteArgs {
  const ExampleAuthenticationRouteArgs({this.key});

  final dynamic key;

  @override
  String toString() {
    return 'ExampleAuthenticationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ExampleMoviePage]
class ExampleMovieRoute extends PageRouteInfo<ExampleMovieRouteArgs> {
  ExampleMovieRoute({
    dynamic key,
    required MovieListEntity movieList,
    List<PageRouteInfo>? children,
  }) : super(
         ExampleMovieRoute.name,
         args: ExampleMovieRouteArgs(key: key, movieList: movieList),
         initialChildren: children,
       );

  static const String name = 'ExampleMovieRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ExampleMovieRouteArgs>();
      return WrappedRoute(
        child: ExampleMoviePage(key: args.key, movieList: args.movieList),
      );
    },
  );
}

class ExampleMovieRouteArgs {
  const ExampleMovieRouteArgs({this.key, required this.movieList});

  final dynamic key;

  final MovieListEntity movieList;

  @override
  String toString() {
    return 'ExampleMovieRouteArgs{key: $key, movieList: $movieList}';
  }
}
