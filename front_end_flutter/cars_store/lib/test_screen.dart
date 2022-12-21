import 'package:cars_store/data/models/car_model.dart';
import 'package:cars_store/data/web_services/web_sevices.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    CarModel cars = CarModel();
    Future<List> getAllStudent() async {
      try {
        var response = await CarsWebServices.getCars();
        if (response.statusCode == 200) {
          cars = CarModel.fromJson(response.data);
          print(cars.id);
          return response.data;
        } else {
          return Future.error('Server Error');
        }
      } catch (e) {
        return Future.error(e);
      }
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                   CarsWebServices.getCars().then(((value) {
                     cars = CarModel.fromJson(value.data);
                    print(cars.id);
                  }));
                },
                child: Text('---')),
          )
        ],
      ),
    );
  }
}
