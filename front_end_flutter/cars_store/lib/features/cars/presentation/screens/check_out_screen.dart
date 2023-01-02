import 'package:cars_store/app_logic/cubit/app_cubit_cubit.dart';
import 'package:cars_store/features/cars/business_logic/cubit/cars_cubit.dart';
import 'package:cars_store/features/cars/data/models/cars_model.dart';
import 'package:cars_store/features/cars/data/repository/cars_repository.dart';
import 'package:cars_store/features/cars/data/web_sevices/cars_web_services.dart';
import 'package:cars_store/features/cars/presentation/screens/orders_summary_screen.dart';
import 'package:cars_store/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckOutScreen extends StatelessWidget {
  CheckOutScreen({super.key, required this.id, required this.maker});
  int? id;
  String? maker;
  Cars? car;

  @override
  Widget build(BuildContext context) {
    var cubit = CarsCubit.get(context);
    return BlocConsumer<CarsCubit, CarsState>(
      listener: (context, state) {},
      builder: (context, state) {
        Cars findCar(id, maker) => maker!.firstWhere((car) => car.id == id);
        if (maker == 'BMW') {
          car = findCar(id, kAllBmw);
        } else if (maker == 'PORSCHE') {
          car = findCar(id, kAllPorsche);
        } else if (maker == 'FERRARI') {
          car = findCar(id, kAllFerrari);
        } else if (maker == 'FORD') {
          car = findCar(id, kAllFord);
        } else if (maker == 'DONKEY') {
          car = findCar(id, kAllDonkey);
        } else if (maker == 'JEEP') {
          car = findCar(id, kAllJeep);
        }

        return Scaffold(
          body: Column(
            children: [
              Row(
                
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.w, top: 70.h),
                    child: Container(
                      child: Image.asset(
                        'assets${car!.image}',
                      ),
                      width: 158.w,
                      height: 344.h,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(color: Colors.black)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.h),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 30.w),
                          child: Text(
                            car!.maker!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Text(
                            car!.model!,
                            style: TextStyle(
                                fontSize: 28.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15.w),
                          child: Text(
                            car!.price! + ' \$',
                            style: TextStyle(
                              fontSize: 20.sp,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text(
                                '4.5/5',
                                style: TextStyle(fontSize: 20.sp),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Icon(
                              Icons.star_rate,
                            ),
                            Icon(
                              Icons.star_rate,
                            ),
                            Icon(
                              Icons.star_rate,
                            ),
                            Icon(
                              Icons.star_rate,
                            ),
                            Icon(
                              Icons.star_outline,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 70.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30.w),
                          child: Text(
                            'Colors',
                            style: TextStyle(fontSize: 20.sp),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 5.w),
                              child: Container(
                                width: 10.w,
                                height: 30.h,
                                color: Colors.green,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 5.w),
                              child: Container(
                                width: 10.w,
                                height: 30.h,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                width: 10.w,
                                height: 30.h,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 140, vertical: 80),
                child: Text(
                  car!.caption!,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 22.w, top: 100.h, right: 22.w),
                  child: Container(
                    height: 65.h,
                    width: 842.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(31, 41, 55, 1)),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                create: (context) => CarsCubit(
                                    CarsRepository(CarsWebServices())),
                                child: OrderSummary(
                                  maker: car!.maker,
                                  id: car!.id,
                                ),
                              ),
                            ));
                      },
                      child: Text(
                        'Go To Order Summary.',
                        style: TextStyle(color: Colors.white, fontSize: 20.sp),
                      ),
                    ),
                  )),
            ],
          ),
        );
      },
    );
  }
}
