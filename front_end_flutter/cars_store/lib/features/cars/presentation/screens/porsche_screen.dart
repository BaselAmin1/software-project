import 'package:cars_store/app_logic/cubit/app_cubit_cubit.dart';
import 'package:cars_store/features/cars/data/models/cars_model.dart';
import 'package:cars_store/features/cars/presentation/widgets/build_cars.dart';
import 'package:cars_store/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logic/cubit/cars_cubit.dart';

class PorscheScreen extends StatelessWidget {
   PorscheScreen({super.key});


  @override
  Widget build(BuildContext context) {
    var cubit = CarsCubit.get(context);
    return BlocConsumer<CarsCubit, CarsState>(
      
      listener: (context, state) {
        
        if (state is AppCubitInitial) {
          cubit.getAllCars('/porsches');
        }
        if (state is CarsLoaded) {
          kAllPorsche = (state).cars;
        }
      },
      builder: (context, state) {
        cubit.getAllCars('/porsches');
        print(cubit.carsList);
        if (kAllPorsche == null) {
          return CircularProgressIndicator();
        } else {
          return Scaffold(
            body: BuildCars(
              cars: kAllPorsche!,
            ),
          );
        }
      },
    );
  }
}
