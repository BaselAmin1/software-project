import 'package:cars_store/cars/widgets/build_cars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BmwScreen extends StatelessWidget {
  const BmwScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}

