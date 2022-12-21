import 'package:cars_store/data/web_services/web_sevices.dart';
import 'package:cars_store/test_screen.dart';
import 'package:flutter/material.dart';

void main() async{
CarsWebServices.init();
  runApp(const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestScreen(),
    );
  }
}