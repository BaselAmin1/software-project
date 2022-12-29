import 'package:cars_store/features/cars/data/models/cars_model.dart';
import 'package:cars_store/features/cars/data/web_sevices/cars_web_services.dart';

class CarsRepository {
  final CarsWebServices carsWebServices;

  CarsRepository(this.carsWebServices);

  Future<List<Cars>> getAllCars(String cars) async {
    final carsList = await carsWebServices.getAllCars(cars);
    return carsList.map((car) => Cars.fromJson(car)).toList();
  }
}
