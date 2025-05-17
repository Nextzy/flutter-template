import 'package:data/lib.dart';

class MovieRpcService extends RpcService {
  const MovieRpcService(
    super.dio, {
    this.path = '/movies',
    super.baseUrl,
  });

  final String path;

  Future<JsonRpcResponse<RemoteMovieListResponse, ErrorResponse>>
      getHighLightMovieList({
    String? requestId,
  }) =>
          request(
            path,
            method: 'getHighLightMovieList',
            id: requestId,
            fromResponseJson: RemoteMovieListResponse.fromJson,
            fromErrorJson: ErrorResponse.fromJson,
          );

  Future<JsonRpcResponse<RemoteMovieListResponse, ErrorResponse>>
      getTrendMovieList({
    String? requestId,
  }) =>
          request(
            path,
            method: 'getTrendMovieList',
            id: requestId,
            fromResponseJson: RemoteMovieListResponse.fromJson,
            fromErrorJson: ErrorResponse.fromJson,
          );

  Future<JsonRpcResponse<RemoteMovieListResponse, ErrorResponse>>
      getMustWatchMovieList({
    String? requestId,
  }) =>
          request(
            path,
            method: 'getMustWatchMovieList',
            id: requestId,
            fromResponseJson: RemoteMovieListResponse.fromJson,
            fromErrorJson: ErrorResponse.fromJson,
          );
}
