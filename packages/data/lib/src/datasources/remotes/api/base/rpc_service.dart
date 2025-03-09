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

  Future<RpcResponse<DATA>> call<DATA>(
    String path, {
    String? jsonrpc,
    required String method,
    Map<String, dynamic>? params,
    String? id,
    required DATA Function(Map<String, dynamic> json) fromJson,
  }) async {
    final extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final headers = <String, dynamic>{};
    final Map<String, Object?> data = {
      'jsonrpc': jsonrpc ?? this.jsonrpc,
      'method': method,
      'params': params,
      'id': id ?? _randomRequestId(),
    };
    data.removeWhere((k, v) => v == null);
    final options = _setStreamType<RpcResponse<DATA>>(
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
    late RpcResponse<DATA> value;
    try {
      value = RpcResponse<DATA>.fromJson(
        result.data!,
        (json) => fromJson(json as Map<String, dynamic>),
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

  // Future<List<RpcResponse>> batch(List<RpcBody> bodyList) async {
  //   final _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   final _headers = <String, dynamic>{};
  //   final _data = bodyList.map((e) => e.toJson()).toList();
  //   final _options = _setStreamType<List<RpcResponse<dynamic>>>(
  //     Options(method: 'POST', headers: _headers, extra: _extra)
  //         .compose(
  //           _dio.options,
  //           '/tasks',
  //           queryParameters: queryParameters,
  //           data: _data,
  //         )
  //         .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
  //   );
  //   final _result = await _dio.fetch<List<dynamic>>(_options);
  //   late List<RpcResponse<dynamic>> _value;
  //   try {
  //     _value = _result.data!
  //         .map(
  //           (dynamic i) =>
  //               RpcResponse<dynamic>.fromJson(i as Map<String, dynamic>),
  //         )
  //         .toList();
  //   } on Object catch (e, s) {
  //     errorLogger?.logError(e, s, _options);
  //     rethrow;
  //   }
  //   return _value;
  // }

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
