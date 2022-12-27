import 'package:cars_store/auth/widgets/auth_text_form_field.dart';
import 'package:cars_store/auth/widgets/build_bottom_button_.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
                   
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Padding(
                        
                    padding:  EdgeInsets.only(top: 60.h),
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
                     padding:  EdgeInsets.only(left: 102.h),
                     child: Text(
                       'Welcome Back!',
                       style: TextStyle(
                         fontSize: 25.sp,
                         fontWeight: FontWeight.bold
                       ),
                     ),
                   ),    
                    SizedBox(
                      height: 38.h,
                    ),
                    
                   Padding(
                     padding:  EdgeInsets.only(left: 28.w),
                     child: Text(
                       'Email',
                     style: TextStyle(
                       fontSize: 18.sp
                     ),
                     ),
                   ),
                   SizedBox(
                    height: 8.h,
                   ),
              Padding(
                padding:  EdgeInsets.only(right: 80.sp),
                child: AuthTextFormField(),
              ),
              SizedBox(
                height: 10.h,
              ),
              
            
                 Padding(
                   padding:  EdgeInsets.only(left: 90.sp),
                   child: Text(
                    'Password',
                   style: TextStyle(
                    fontSize: 18.sp
                   ),
                   ),
                 ),
                 SizedBox(
                  height: 8.h,
                 ),
                Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: AuthTextFormField(),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 85),
                      child: Icon(
                        Icons.check_box
                      ),
                    ),
                    Text(
                      'Remember Me',
                      style: TextStyle(
                        fontSize: 17.sp
                      ),
                      ),
                      SizedBox(
                        width: 95,
                      ),
                      Text(
                      'Don’t Have An Account Yet?',
                      style: TextStyle(
                        fontSize: 17.sp
                      ),
                      ),
                      TextButton(onPressed: (){}
                      
                      , child: Text(
                        'Register',
                      ))

                  ],
                ),
               
                BuildBottomButton(
                  onPrised: (){},
                  childText: 'Login',
                )],
                    
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