import 'package:cars_store/app_logic/cubit/app_cubit_cubit.dart';
import 'package:cars_store/features/cars/business_logic/cubit/cars_cubit.dart';
import 'package:cars_store/features/cars/data/models/cars_model.dart';

import 'package:cars_store/features/cars/presentation/widgets/build_cars.dart';
import 'package:cars_store/strings.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class BmwScreen extends StatelessWidget {
  BmwScreen({super.key});
  //List<Cars>? AllCars = [];

  @override
  Widget build(BuildContext context) {
    var cubit = CarsCubit.get(context);
    return BlocConsumer<CarsCubit, CarsState>(
      listener: (context, state) {
        if (state is AppCubitInitial) {
          cubit.getAllCars('/bmws');
        }
        if (state is CarsLoaded) {
          kAllBmw = (state).cars;
        }
      },
      builder: (context, state) {
        cubit.getAllCars('/bmws');
        print(cubit.carsList);
        if (kAllBmw == null) {
          return CircularProgressIndicator();
        } else {
          return Scaffold(
            body: BuildCars(
              cars: kAllBmw!,
            
            ),
          );
        }
      },
    );
  }
}
