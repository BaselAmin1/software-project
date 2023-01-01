import 'package:cars_store/app_logic/cubit/app_cubit_cubit.dart';
import 'package:cars_store/features/cars/business_logic/cubit/cars_cubit.dart';
import 'package:cars_store/features/cars/presentation/widgets/build_cars.dart';
import 'package:cars_store/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JeeptScreen extends StatelessWidget {
  const JeeptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = CarsCubit.get(context);
    return   BlocConsumer<CarsCubit, CarsState>(
      listener: (context, state) {
        if (state is AppCubitInitial) {
          cubit.getAllCars('/jeeps');
        }
        if (state is CarsLoaded) {
          kAllJeep = (state).cars;
        }
      },
      builder: (context, state) {
        cubit.getAllCars('/jeeps');
        print(cubit.carsList);
        if (kAllJeep == null) {
          return CircularProgressIndicator();
        } else {
          return Scaffold(
            body: BuildCars(
              cars: kAllJeep!,
            
            ),
          );
        }
      },
    );
  }
}
