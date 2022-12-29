import 'package:cars_store/features/cars/presentation/widgets/build_cars.dart';
import 'package:flutter/material.dart';

class MercedesScreen extends StatelessWidget {
  const MercedesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BuildCars(
      carName: 'sefse',
      carPrice: '89988',
      carImage: Image.asset('assets/images/bmw_4series.jpg'),
    );
  }
}
