import 'package:dio/dio.dart';
import 'package:ram_demo_app/features/data/inteceptors/on_connection_closed_inteceptor.dart';

abstract final class DioClientFactory{
    static Dio create(){
      final dio = Dio();

      dio.interceptors.addAll([
        OnConnectionClosedInterceptor(dio)
      ]);

      return dio;
    }
}