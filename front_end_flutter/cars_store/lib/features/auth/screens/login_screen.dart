import 'package:cars_store/features/auth/screens/register_screen.dart';
import 'package:cars_store/features/auth/widgets/auth_text_form_field.dart';
import 'package:cars_store/features/auth/widgets/build_bottom_button_.dart';
import 'package:cars_store/features/auth/widgets/login_with_builder.dart';
import 'package:cars_store/features/cars/presentation/screens/cars_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                      SizedBox(
                        height: 60.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25.w),
                        child: Text(
                          'Welcome Back!',
                          style: TextStyle(
                              fontSize: 25.sp, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 38.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28.w),
                        child: Text(
                          'Email',
                          style: TextStyle(fontSize: 18.sp),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20.w),
                        child: AuthTextFormField(
                          hintText: 'Enter Your Email',
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28.w),
                        child: Text(
                          'Password',
                          style: TextStyle(fontSize: 18.sp),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(right: 20.w),
                        child: AuthTextFormField(
                          hintText: 'Enter Your Password',
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 25.w),
                            child: Icon(Icons.check_box,
                            color: Colors.blue,
                            ),
                          ),
                          Text(
                            'Remember Me',
                            style: TextStyle(fontSize: 17.sp),
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            'Don’t Have An Account Yet?',
                            style: TextStyle(fontSize: 17.sp),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen(),
                                )
                                );
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  color: Color.fromRGBO(29, 78, 216, 1)
                                ),
                              ))
                        ],
                      ),
                      BuildBottomButton(
                        onPrised: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CarsLayout(),
                          )
                          );
                        },
                        childText: 'Login',
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      LoginWithBuilder(),
                    ],
                  ),
                ),
              ),
              Container(
                width: 200.w,
                height: 844.h,
                child: Image.asset(
                  'assets/images/jeep_wrangler.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
