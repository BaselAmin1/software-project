import 'package:bloc/bloc.dart';
import 'package:cars_store/features/cars/data/models/cars_model.dart';
import 'package:cars_store/features/cars/data/repository/cars_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'cars_state.dart';

class CarsCubit extends Cubit<CarsState> {
  static CarsCubit get(context) => BlocProvider.of(context);
  final CarsRepository carsRepository;
  List<Cars> carsList = [];

  CarsCubit(this.carsRepository) : super(CarsInitial());

  List<Cars> getAllCharacters(String cars) {
    try {
      carsRepository.getAllCars(cars).then((cars) {
        emit(CarsLoaded(carsList));
        carsList = cars;
      });
    } catch (e) {
      print(e.toString());
    }

    return carsList;
  }
}
