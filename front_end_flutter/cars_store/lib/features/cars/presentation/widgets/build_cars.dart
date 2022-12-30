// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cars_store/features/auth/screens/login_screen.dart';
import 'package:cars_store/features/cars/data/models/cars_model.dart';
import 'package:cars_store/features/cars/data/models/cars_model.dart';
import 'package:cars_store/features/cars/presentation/screens/check_out_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildCars extends StatelessWidget {
  const BuildCars({
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
              BoxShadow(blurRadius: 5.r, color: Colors.grey),
            ],
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(20.r)),
        child: GridView.builder(
          // ignore: prefer_const_constructors
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2 / 2,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
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
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOutScreen(),
                      )
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.w, top: 18.h),
                      child: Container(
                        width: 70.w,
                        height: 207.h,
                        decoration: BoxDecoration(
                          
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(blurRadius: 5.r, color: Colors.grey),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.r)),
                        child: Column(
                          children: [
                            Text(
                              car.model!,
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.w, top: 10.h),
                                  child: Text(
                                    car.price!,
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Image.asset('assets/images/trend.png')
                              ],
                            ),
                            //   Image.asset(
                            //   'back_end_django/cars_store/images${car.image}')
                            //!Imageeeere
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
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
    );
  }
}
