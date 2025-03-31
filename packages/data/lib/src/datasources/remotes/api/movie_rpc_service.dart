import 'package:data/lib.dart';

class MovieRpcService extends RpcService {
  const MovieRpcService(
    super.dio, {
    this.path = '/movies',
    super.baseUrl,
  });

  final String path;

  Future<JsonRpcResponse<RemoteMovieListResponse>> getHighLightMovieList({
    String? requestId,
  }) =>
      request(
        path,
        method: 'getHighLightMovieList',
        id: requestId,
        fromJson: RemoteMovieListResponse.fromJson,
      );

  Future<JsonRpcResponse<RemoteMovieListResponse>> getTrendMovieList({
    String? requestId,
  }) =>
      request(
        path,
        method: 'getTrendMovieList',
        id: requestId,
        fromJson: RemoteMovieListResponse.fromJson,
      );

  Future<JsonRpcResponse<RemoteMovieListResponse>> getMustWatchMovieList({
    String? requestId,
  }) =>
      request(
        path,
        method: 'getMustWatchMovieList',
        id: requestId,
        fromJson: RemoteMovieListResponse.fromJson,
      );
}
