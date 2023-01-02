// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cars_store/features/auth/screens/login_screen.dart';
import 'package:cars_store/features/cars/business_logic/cubit/cars_cubit.dart';
import 'package:cars_store/features/cars/data/models/cars_model.dart';
import 'package:cars_store/features/cars/data/models/cars_model.dart';
import 'package:cars_store/features/cars/data/repository/cars_repository.dart';
import 'package:cars_store/features/cars/data/web_sevices/cars_web_services.dart';
import 'package:cars_store/features/cars/presentation/screens/check_out_screen.dart';
import 'package:cars_store/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildCars extends StatelessWidget {
  BuildCars({
    Key? key,
    required this.cars,
  }) : super(key: key);
  final List<Cars> cars;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 45.w, top: 58.h),
      child: Container(
        width: 290.w,
        height: 624.h,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                blurRadius: 5.r,
                color: Colors.grey,
              ),
            ],
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20.r)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h),
          child: GridView.builder(
            // ignore: prefer_const_constructors
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 2 / 2,
              crossAxisSpacing: .7,
              mainAxisSpacing: .7,
            ),
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: cars.length,
            itemBuilder: (context, index) {
              final car = cars[index];
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                create: (context) => CarsCubit(
                                    CarsRepository(CarsWebServices())),
                                child: CheckOutScreen(
                                  id: car.id,
                                  maker: car.maker,
                                ),
                              ),
                            ));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.w, top: 18.h),
                        child: Container(
                          width: 70.w,
                          height: 230.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              boxShadow: [
                                BoxShadow(blurRadius: 5.r, color: Colors.grey),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.r)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 18.h,
                              ),
                              Text(
                                car.model!,
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 10.w, top: 10.h),
                                    child: Text(
                                      car.price!,
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: 3.w,
                                  // ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child:
                                        Image.asset('assets/images/trend.png'),
                                  )
                                ],
                              ),
                              Image.asset(
                                'assets${car.image}',
                               // width: 270,
                                //height: 170,
                              )
                              //!Imageeeere
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if(car.availabilty==true)Icon(
                          Icons.check_box_outlined,
                        )else Icon(
                          Icons.check_box_outline_blank_sharp,
                        ),
                        
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          'Available',
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ],
                    ),
                  ]);
            },
          ),
        ),
      ),
    );
  }
}
