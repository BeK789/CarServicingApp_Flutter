import 'package:dio/dio.dart';
import 'diException.dart';

class DioClient {
  final dio = createDio();
  final tokenDio = Dio(BaseOptions(baseUrl: 'https://fakestoreapi.com'));

  DioClient._internal();

  static final _singleton = DioClient._internal();

  factory DioClient() => _singleton;

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: 'https://garagewa.loca.lt',
      receiveTimeout: Duration(seconds: 15), // 15 seconds
      connectTimeout: Duration(seconds: 15),
      sendTimeout: Duration(seconds: 15),
    ));

    dio.interceptors.addAll({
      AppInterceptors(dio),
    });
    return dio;
  }
}
