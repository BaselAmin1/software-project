import 'package:dio/dio.dart';

class CarsWebServices {
  late Dio dio;

  CarsWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: 'http://10.0.2.2:4444/',
      receiveDataWhenStatusError: true,
      // connectTimeout: 20 * 1000,
      // receiveTimeout: 20 * 1000,
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCars(
    String cars,
  ) async {
    try {
      Response response = await dio.get(cars);
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

}
