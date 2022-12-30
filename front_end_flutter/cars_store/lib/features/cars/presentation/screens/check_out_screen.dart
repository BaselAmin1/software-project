import 'dart:ui';

import 'package:cars_store/features/auth/widgets/build_bottom_button_.dart';
import 'package:cars_store/features/cars/presentation/screens/orders_summary_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 50.w,top: 70.h),
                child: Container(
                  child: Image.asset('assets/images/test_car.jpg',
                  
                  ),
                  width: 158.w,
                  height: 344.h,
                  decoration: BoxDecoration(
                     color: Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(color: Colors.black)
                  ),
                  
                  
                ),
              ),
              
             Padding(
               padding:  EdgeInsets.only(top: 50.h),
               child: Column(
                 children: [
                   Padding(
                     padding:  EdgeInsets.only(right: 30.w),
                     child: Text('BMW',
                     style: TextStyle(
                      fontSize: 18.sp,
                     ),
                     ),
                   ),
                   SizedBox(
                    height: 10.h,
                   ),
                   Padding(
                     padding:  EdgeInsets.only(left:10.w ),
                     child: Text('4 Series, 440i.',
                     style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold
                     ),
                     ),
                   ),
                   SizedBox(
                    height: 10.h,
                   ),
                    Padding(
                      padding:  EdgeInsets.only(right: 15.w),
                      child: Text(
                       '£1,200,000',
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
                          padding:  EdgeInsets.only(left: 10.w),
                          child: Text('4.5/5',
                          style: TextStyle(
                            fontSize: 20.sp
                          ),
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
                    padding:  EdgeInsets.only(right: 30.w),
                    child: Text('Colors',
                    style: TextStyle(
                      fontSize: 20.sp
                    ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      
                    Padding(
                        padding:  EdgeInsets.only(right: 5.w),
                        child: Container(
                          width: 10.w,
                          height: 30.h,
                          color: Colors.green,
                        ),
                      ),
                   Padding(
                     padding:  EdgeInsets.only(right: 5.w),
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
        padding: EdgeInsets.only(left: 215.w, top: 30.h, right: 22.w),
        child: Container(
          height: 65.h,
          width: 342.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Color.fromRGBO(31, 41, 55, 1)),
          child: MaterialButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderSummary(),
              )
              );
            },
            child: Text(
              'Go To Order Summary.',
              style: TextStyle(color: Colors.white, fontSize: 20.sp),
            ),
          ),
        )
        ),

        
        ],
      ) ,
    );
  }
}