import 'package:cars_store/features/auth/screens/login_screen.dart';
import 'package:cars_store/features/auth/screens/register_screen.dart';
import 'package:cars_store/features/cars/data/web_sevices/cars_web_services.dart';
import 'package:cars_store/features/cars/presentation/screens/bmw_screen.dart';
import 'package:cars_store/features/cars/presentation/screens/check_out_screen.dart';
import 'package:cars_store/features/cars/presentation/screens/orders_summary_screen.dart';
import 'package:cars_store/features/cars/presentation/screens/purchase_end.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/cars/presentation/screens/cars_layout.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(primarySwatch: Colors.grey),
          debugShowCheckedModeBanner: false,
          home: CarsLayout(),
        );
      },
    );
  }
}
