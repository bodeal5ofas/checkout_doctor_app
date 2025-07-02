import 'package:dio/dio.dart';

class DioFactory {
  DioFactory._();
  static Dio? dio;
  static Dio getDio() {
    Duration timeout = Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!.options.connectTimeout = timeout;
      dio!.options.receiveTimeout = timeout;
      addDioIntegrations();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioIntegrations() {
    dio!.interceptors.add(LogInterceptor(
      requestBody: true,
      requestHeader: true,
      responseHeader: true,
    ));
  }
}
