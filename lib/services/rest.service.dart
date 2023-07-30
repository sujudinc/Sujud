// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/exceptions/exceptions.dart';

class RestService implements RestServiceAbstract {
  RestService({Dio? dio}) : _dio = dio ?? Dio() {
    _dio.interceptors.add(DioInterceptor());
  }

  final Dio _dio;

  @override
  Future<dynamic> create(String path, Map<String, dynamic> params) async {
    final response = await _dio.post(path, data: params);

    return response.data;
  }

  @override
  Future<dynamic> read(String path, {Map<String, dynamic>? params}) async {
    final response = await _dio.get(path, queryParameters: params);

    return response.data;
  }

  @override
  Future<dynamic> update(String path, {Map<String, dynamic>? params}) async {
    final response = await _dio.put(path, data: params);

    return response.data;
  }

  @override
  Future<dynamic> delete(String path, {Map<String, dynamic>? params}) async {
    final response = await _dio.delete(path, queryParameters: params);

    return response.data;
  }
}

class DioInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
        throw ConnectionException(err.requestOptions, err.message);
      case DioExceptionType.sendTimeout:
        throw SendTimeoutException(err.requestOptions, err.message);
      case DioExceptionType.receiveTimeout:
        throw ReceiveTimeoutException(err.requestOptions, err.message);
      case DioExceptionType.badCertificate:
        throw BadCertificateException(err.requestOptions, err.message);
      case DioExceptionType.badResponse:
        throw BadResponseException(err.requestOptions, err.message);
      case DioExceptionType.connectionError:
        throw ConnectionException(err.requestOptions, err.message);
      case DioExceptionType.unknown:
        throw UnknownException(err.requestOptions, err.message);
      case DioExceptionType.cancel:
        break;
    }

    return handler.next(err);
  }
}
