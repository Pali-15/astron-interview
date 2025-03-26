import 'package:dio/dio.dart';
import 'package:template/constants.dart';
import 'package:template/domain/clients/only_succes_get_cache_interceptor.dart';

class GithubClient {
  final Dio _dio = Dio();

  GithubClient() {
    _dio.interceptors.add(
      OnlySuccessGetCacheInterceptor(),
    );
  }

  Future<Response<T>> get<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) {
    return _dio.get(
      "$githubBaseUrl/$path",
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }
}
