// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:cars_store/features/auth/screens/login_screen.dart';
import 'package:cars_store/features/auth/widgets/auth_text_form_field.dart';
import 'package:cars_store/features/auth/widgets/build_bottom_button_.dart';
import 'package:cars_store/features/auth/widgets/login_with_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisSize: MainAxisSize.max,
        children: [
          // ignore: prefer_const_constructors

          Row(
            //mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 200.w,
                height: 844.h,
                child: Image.asset(
                  'assets/images/bmw 520i.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Container(
                  width: 230.w,
                  height: 844.h,
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 60.h),
                        child: Center(
                          child: Text(
                            'readyto.',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 46.sp,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 27.w),
                            child: Text(
                              'Get started',
                              style: TextStyle(
                                  fontSize: 21.sp, fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            width: 55.w,
                          ),
                          Text(
                            'Already signed up?',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            // ignore: prefer_const_constructors
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Color.fromRGBO(29, 78, 216, 1), fontSize: 18.sp),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 27.w),
                            child: Text(
                              'First Name',
                              style: TextStyle(fontSize: 18.sp),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 32.w),
                            child: Text(
                              'Last Name',
                              style: TextStyle(fontSize: 18.sp),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: AuthTextFormField(
                              hintText: 'Entert your First Name ',
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Expanded(
                            child: Padding(
                              padding:  EdgeInsets.only(right: 24.w),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Enter your Last Name ',
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(2.r))),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 27.w),
                        child: Text(
                          'Email Address',
                          style: TextStyle(fontSize: 18.sp),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(right: 24.w),
                        child: AuthTextFormField(
                          hintText: 'Enter your Email',
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 27.w),
                        child: Text(
                          'Password',
                          style: TextStyle(fontSize: 18.sp),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(right: 24.w),
                        child: AuthTextFormField(
                          hintText: 'Enter your Password',
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 27.w),
                        child: Text(
                          'Phone Number',
                          style: TextStyle(fontSize: 18.sp),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(right: 24.w),
                        child: AuthTextFormField(
                          hintText: 'Enter your Phone Number',

                        ),
                      ),
                      SizedBox(
                        
                    height:25.h ,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left:27.w ),
                            child: Icon(
                              Icons.check_box,
                              color: Colors.blue,
                            ),
                          ),
                          Text(
                            'I agree to the Terms of Service & Privacy Policy*',
                            style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            ),

                        ],
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      BuildBottomButton(
                        onPrised: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen(),
                          )
                          );
                        },
                        childText: 'Register',
                      ),
                      SizedBox(
                        height: 45.h,
                      ),
                      LoginWithBuilder(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

