import 'package:dio/dio.dart';

class CarsWebServices {
  static late Dio dio;

  static init() {
    BaseOptions options = BaseOptions(
      baseUrl:'http://10.0.2.2:4444/',
      receiveDataWhenStatusError: true,
      receiveTimeout: 20 * 1000,
      connectTimeout: 20 * 1000,
    );
    dio = Dio(
      options,
    );
  }

  static Future<Response> getCars({
    Map<String, dynamic>? query,

  }) async {
     dio.options.headers = {
    //  "accept":"application/json"
     // 'Content-Type': 'application/json',
    };
    return dio.get(
      'cars/3/',
    );
  }
}