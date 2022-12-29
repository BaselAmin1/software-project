import 'package:cars_store/app_logic/cubit/app_cubit_cubit.dart';
import 'package:cars_store/features/cars/business_logic/cubit/cars_cubit.dart';
import 'package:cars_store/features/cars/data/repository/cars_repository.dart';
import 'package:cars_store/features/cars/data/web_sevices/cars_web_services.dart';
import 'package:cars_store/features/cars/presentation/widgets/build_cars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BmwScreen extends StatelessWidget {
  const BmwScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = CarsCubit.get(context);
    return BlocConsumer<CarsCubit, CarsState>(
      listener: (context, state) {
        if (state is AppCubitInitial) {
          cubit.getAllCharacters('/bmws');
         
        }
      },
      builder: (context, state) {
         cubit.getAllCharacters('/bmws');
          print(cubit.carsList);
        return Scaffold(
          
          body: BuildCars(
            firstRowOfCarsName: '2 Series',
            firstRowOfCarsPrice: '800,000',
            firstRowOfCarsImage: Image.asset('assets/images/bmw_2series.jpg'),
            secondRowOfCarsName: '4 Series',
            secondRowOfCarsPrice: '1,200,000',
            secondRowOfCarsImage: Image.asset('assets/images/bmw_4series.jpg'),
          ),
        );
      },
    );
  }
}
