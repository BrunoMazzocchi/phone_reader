import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class RefreshTokenInterceptor extends Interceptor {
  final Dio _dio;

  RefreshTokenInterceptor(
    this._dio,
  );

  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await _secureStorage.read(key: 'token');
    if (token != null) {
      options.headers["Authorization"] = "Bearer $token";
    }
    return handler.next(options);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      final token = await _secureStorage.read(key: 'refreshToken');
      if (token != null) {
        // Update the authorization header with the new token
        _dio.options.headers["Authorization"] = "Bearer $token";
        // Retry the original request
        return _dio.request(
          err.requestOptions.path,
        );
      }
    }

    if (err.response?.statusCode == 403) {
      _secureStorage.deleteAll();
    }

    return handler.next(err);
  }
}
