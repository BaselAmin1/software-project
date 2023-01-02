import 'package:cars_store/features/auth/widgets/auth_text_form_field.dart';
import 'package:cars_store/features/cars/business_logic/cubit/cars_cubit.dart';
import 'package:cars_store/features/cars/data/models/cars_model.dart';
import 'package:cars_store/features/cars/presentation/screens/purchase_end.dart';
import 'package:cars_store/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderSummary extends StatelessWidget {
  OrderSummary({super.key, required this.id, required this.maker});
  int? id;
  String? maker;
  Cars? car;
  @override
  Widget build(BuildContext context) {
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
        }
        return Container(
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.only(top: 80.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text(
                                'Payment',
                                style: TextStyle(fontSize: 30.sp),
                              ),
                            ),
                            SizedBox(
                              height: 40.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 29.w),
                              // ignore: prefer_const_constructors
                              child: Text(
                                'Card Number',
                                style: TextStyle(fontSize: 15.sp),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            AuthTextFormField(
                              hintText: 'Enter Your Card Number',
                              suffix:
                                  Image.asset('assets/images/mastercard.jpg'),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 30.w),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          hintText: 'DD/MM/YY ',
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(2.r))),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.w, right: 10.w),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          hintText: 'CVV ',
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(2.r))),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            AuthTextFormField(hintText: 'Card Holder Name')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 90.w,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: Container(
                            height: 500.h,
                            width: 100.w,
                            // ignore: sort_child_properties_last
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(15.0.h.w),
                                    child: Text(
                                      'Order Summary',
                                      style: TextStyle(
                                          fontSize: 25.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15.w),
                                        child: Text(
                                          'Total items:',
                                          style: TextStyle(fontSize: 19.sp),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 70.w),
                                        child: Text(
                                          '1',
                                          style: TextStyle(fontSize: 18.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15.w),
                                        child: Text(
                                          'Total Charges:',
                                          style: TextStyle(fontSize: 19.sp),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 63.w),
                                        child: Text(
                                          car!.price! + ' \$',
                                          style: TextStyle(fontSize: 18.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15.w),
                                        child: Text(
                                          'Shipping charges:',
                                          style: TextStyle(fontSize: 19.sp),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: Text(
                                          'Free shipping for first order',
                                          
                                          style: TextStyle(fontSize: 18.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox( 
                                    height: 15.h,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15.w),
                                        child: Text(
                                          'Subtotal:',
                                          style: TextStyle(fontSize: 19.sp),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 77.w),
                                        child: Text(
                                          car!.price! + ' \$',
                                          style: TextStyle(fontSize: 18.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 120.h,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15.w),
                                        child: Text(
                                          'Estimated Total:',
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 55.w),
                                        child: Text(
                                          car!.price! + ' \$',
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),

                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 1.r,
                                      color: Colors.grey.shade100)
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 260.w, top: 30.h, right: 22.w),
                      child: Container(
                        height: 65.h,
                        width: 342.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromRGBO(31, 41, 55, 1)),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PurchaseEnd(),
                                ));
                          },
                          child: Text(
                            'checkout',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.sp),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
