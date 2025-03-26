import 'package:dio/dio.dart';

// Interceptor which will cache every response when the method is GET and the status code is 200
class OnlySuccessGetCacheInterceptor extends Interceptor {
  final _cache = <Uri, Response>{};

  // Check if there is a value in the _cache before sending out the request
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final uri = options.uri;

    if (options.method.toUpperCase() == 'GET' && _cache.containsKey(uri)) {
      final cachedResponse = _cache[uri]!;
      return handler.resolve(
        cachedResponse,
      );
    }

    handler.next(options);
  }

  // Cache the response if the status code is 200 and method is GET
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final uri = response.requestOptions.uri;

    if (response.requestOptions.method.toUpperCase() == 'GET' &&
        response.statusCode == 200) {
      _cache[uri] = response;
    }

    handler.next(response);
  }

  // If there is a network error, try to fall back on cached value
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final uri = err.requestOptions.uri;
    final isNetworkError = err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.connectionError ||
        err.type == DioExceptionType.unknown;

    if (err.requestOptions.method.toUpperCase() == 'GET' &&
        isNetworkError &&
        _cache.containsKey(uri)) {
      final cachedResponse = _cache[uri]!;
      return handler.resolve(cachedResponse);
    }

    handler.next(err);
  }
}
