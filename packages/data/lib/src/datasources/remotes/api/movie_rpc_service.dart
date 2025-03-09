import 'package:data/lib.dart';

class MovieRpcService extends RpcService {
  const MovieRpcService(
    super.dio, {
    this.path = '/movies',
    super.baseUrl,
  });

  final String path;

  Future<RpcResponse<RemoteMovieListResponse>> getHighLightMovieList({
    String? requestId,
  }) =>
      call(
        path,
        method: 'getHighLightMovieList',
        id: requestId,
        fromJson: RemoteMovieListResponse.fromJson,
      );

  Future<RpcResponse<RemoteMovieListResponse>> getTrendMovieList({
    String? requestId,
  }) =>
      call(
        path,
        method: 'getTrendMovieList',
        id: requestId,
        fromJson: RemoteMovieListResponse.fromJson,
      );

  Future<RpcResponse<RemoteMovieListResponse>> getMustWatchMovieList({
    String? requestId,
  }) =>
      call(
        path,
        method: 'getMustWatchMovieList',
        id: requestId,
        fromJson: RemoteMovieListResponse.fromJson,
      );
}
