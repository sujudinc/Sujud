// 📦 Package imports:
import 'package:dio/dio.dart';

class ConnectionException extends DioException {
  ConnectionException(RequestOptions requestOptions, String? message)
      : super(requestOptions: requestOptions, message: message);

  @override
  String toString() => 'ConnectionException: $message';
}

class SendTimeoutException extends DioException {
  SendTimeoutException(RequestOptions requestOptions, String? message)
      : super(requestOptions: requestOptions, message: message);

  @override
  String toString() => 'SendTimeoutException: $message';
}

class ReceiveTimeoutException extends DioException {
  ReceiveTimeoutException(RequestOptions requestOptions, String? message)
      : super(requestOptions: requestOptions, message: message);

  @override
  String toString() => 'ReceiveTimeoutException: $message';
}

class BadCertificateException extends DioException {
  BadCertificateException(RequestOptions requestOptions, String? message)
      : super(requestOptions: requestOptions, message: message);

  @override
  String toString() => 'BadCertificateException: $message';
}

class BadResponseException extends DioException {
  BadResponseException(RequestOptions requestOptions, String? message)
      : super(requestOptions: requestOptions, message: message);

  @override
  String toString() => 'BadResponseException: $message';
}

class ConnectionErrorException extends DioException {
  ConnectionErrorException(RequestOptions requestOptions, String? message)
      : super(requestOptions: requestOptions, message: message);

  @override
  String toString() => 'ConnectionErrorException: $message';
}

class UnknownException extends DioException {
  UnknownException(RequestOptions requestOptions, String? message)
      : super(requestOptions: requestOptions, message: message);

  @override
  String toString() => 'UnknownException: $message';
}
