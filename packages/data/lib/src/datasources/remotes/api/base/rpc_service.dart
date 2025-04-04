import 'package:data/lib.dart';

abstract class RpcService {
  const RpcService(
    this._dio, {
    this.baseUrl,
    this.jsonrpc = 'Nextzy',
    this.errorLogger,
  });

  final Dio _dio;
  final String? baseUrl;
  final String jsonrpc;
  final ParseErrorLogger? errorLogger;

  Future<JsonRpcResponse<DATA>> request<DATA>(
    String path, {
    String? jsonrpc,
    required String method,
    Map<String, dynamic>? params,
    String? id,
    required DATA Function(Map<String, dynamic> json) fromJson,
    Map<String, dynamic>? queryParameters,
  }) async {
    final extra = <String, dynamic>{};
    queryParameters = queryParameters ?? <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);

    final headers = <String, dynamic>{};

    final Map<String, Object?> data = {
      'jsonrpc': jsonrpc ?? this.jsonrpc,
      'method': method,
      'params': params,
      'id': id ?? _randomRequestId(),
    };
    data.removeWhere((k, v) => v == null);

    final options = _setStreamType<JsonRpcResponse<DATA>>(
      Options(method: 'POST', headers: headers, extra: extra)
          .compose(
            _dio.options,
            path,
            queryParameters: queryParameters,
            data: data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );

    final result = await _dio.fetch<Map<String, dynamic>>(options);

    late JsonRpcResponse<DATA> value;
    try {
      value = JsonRpcResponse<DATA>.fromJson(
        result.data!,
        (data) {
          if (data is Map) {
            return fromJson(data as Map<String, dynamic>);
          } else {
            return fromJson({
              'result': data,
            });
          }
        },
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, options);
      rethrow;
    }
    return value;
  }

  Future<void> notify(
    String path, {
    String? jsonrpc,
    required String method,
    Map<String, dynamic>? params,
  }) async {
    final extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final headers = <String, dynamic>{};
    final Map<String, Object?> data = {
      'jsonrpc': jsonrpc ?? this.jsonrpc,
      'method': method,
      'params': params,
    };
    data.removeWhere((k, v) => v == null);
    final options = _setStreamType(
      Options(method: 'POST', headers: headers, extra: extra)
          .compose(
            _dio.options,
            path,
            queryParameters: queryParameters,
            data: data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    await _dio.fetch<Map<String, dynamic>>(options);
  }

  //TODO: Need research
  Future<List<JsonRpcResponse>> batch(
    String path, {
    required List<BatchJsonRpcBody> bodyList,
  }) async {
    final extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final headers = <String, dynamic>{};
    final data = bodyList.map((e) => e.toJson()).toList();
    final options = _setStreamType<List<JsonRpcResponse<dynamic>>>(
      Options(method: 'POST', headers: headers, extra: extra)
          .compose(
            _dio.options,
            path,
            queryParameters: queryParameters,
            data: data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final result = await _dio.fetch<List<dynamic>>(options);
    late List<JsonRpcResponse<dynamic>> value;
    try {
      result.data!.removeWhere((m) => m['id'] == null);
      value = result.data!.map(
        (dynamic i) {
          final iMap = i as Map<String, dynamic>;
          final id = iMap['id'];
          final Function(Map<String, dynamic>? json)? fromJson =
              bodyList.firstWhereOrNull((b) => b.id == id)?.toJsonResponse;
          return JsonRpcResponse<dynamic>.fromJson(
            iMap,
            (p) {
              if (p is Map<String, dynamic>?) {
                return fromJson!(p);
              } else {
                return p;
              }
            },
          );
        },
      ).toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, options);
      rethrow;
    }
    return value;
  }

  String _randomRequestId() {
    final random = Random();
    final randomNumber = random.nextInt(999999) + 1;
    return randomNumber.toString();
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
