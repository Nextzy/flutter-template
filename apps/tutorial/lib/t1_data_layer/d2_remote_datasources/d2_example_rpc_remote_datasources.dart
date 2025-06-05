// import 'package:change_application_name/application.dart';
// import 'package:tutorial/tutorial.dart';
//
// class ExampleRpcRemoteDataSources {
//   ExampleRpcRemoteDataSources({
//     ExampleAuthenticationRpcService? authService,
//     ExampleMovieRpcService? movieService,
//   })  : _authService = authService ??
//             ExampleAuthenticationRpcService(ExampleHttpClient.instance.dio),
//         _movieService = movieService ??
//             ExampleMovieRpcService(ExampleHttpClient.instance.dio);
//
//   final ExampleAuthenticationRpcService _authService;
//   final ExampleMovieRpcService _movieService;
//
//   /// Case 1: Call 1 service
//   Future<ExampleRemoteAuthenticationResponse> signInWithEmailPassword({
//     required String email,
//     required String password,
//     String? requestId,
//   }) =>
//       _authService
//           .signInWithEmailPassword(
//             email: email,
//             password: password,
//             requestId: requestId,
//           )
//           .unwrapResponse();
//
//   /// Case 2: Call multiple services sequentially
//   Future<ExampleRemoteMovieListResponse> getMovieList({
//     String? requestId,
//   }) =>
//       _movieService
//           .getHighLightMovieList()
//           .then(
//             (value) => _movieService.getTrendMovieList(
//               requestId: requestId,
//             ),
//           )
//           .then(
//             (value) => _movieService.getMustWatchMovieList(
//               requestId: requestId,
//             ),
//           )
//           .unwrapResponse();
//
//   /// Case 3: Call multiple services at same time
//   Future<
//       ({
//         ExampleRemoteMovieListResponse hightLightMovieList,
//         ExampleRemoteMovieListResponse trendMovieList,
//         ExampleRemoteMovieListResponse mustWatchMovieList
//       })> getMovieList2() => Future.wait([
//         _movieService.getHighLightMovieList(),
//         _movieService.getTrendMovieList(),
//         _movieService.getMustWatchMovieList(),
//       ]).then(
//         (resultList) => (
//           hightLightMovieList: resultList[0].data,
//           trendMovieList: resultList[1].data,
//           mustWatchMovieList: resultList[2].data,
//         ),
//       );
//
//   /// Case 4: Customize call api logic follow by business logic
//   Future getCustomList() async {
//     final movieListResponse = await _movieService.getHighLightMovieList();
//
//     if (movieListResponse.isError) {
//       // TODO(username): Do something
//       return Future.value();
//     }
//     throw NetworkException();
//   }
// }
