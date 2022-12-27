import 'package:cars_store/auth/widgets/auth_text_form_field.dart';
import 'package:cars_store/auth/widgets/build_bottom_button_.dart';
import 'package:cars_store/auth/widgets/defualt_text_form_field.dart';
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
              
                   Row(
                
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 102.h),
                        child: Text(
                          'Get started',
                          style: TextStyle(
                            fontSize: 21.sp,
                            fontWeight: FontWeight.w600
                          ),
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
                        onPressed: (){},
                        // ignore: prefer_const_constructors
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color:Colors.blue ,
                            fontSize: 18.sp

                            ),
                          ),
                      
                        
                         ),
                       
                     
              
              
                    ],
                   ),    
                    
                    
                   Row(
                    children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 32.w),
                          child: Text('First Name',
                          style: TextStyle(
                            fontSize: 18.sp
                          ),
                          ),
                        ),
                        SizedBox(
                          width: 17.w,
                        ),
                           Padding(
                          padding:  EdgeInsets.only(left: 32.w),
                          child: Text('Last Name',
                          style: TextStyle(
                            fontSize: 18.sp
                          ),
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
                    child: AuthTextFormField(),
                  ),
                  SizedBox(
                    width: 17.w,
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: TextFormField(
                      
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(2.r))
                        ),
                      ),
                    ),
                  ),
                 
                 ],
              ),
              SizedBox(
                height: 25.h,
              ),
                 Padding(
                   padding:  EdgeInsets.only(left: 90.sp),
                   child: Text(
                    'Email Address',
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
                  height: 25.h,
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
                  height: 25.h,
                ),
                 Padding(
                   padding:  EdgeInsets.only(left: 90.sp),
                   child: Text(
                    'Serial Number',
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
                  height: 72.h,
                ),
                BuildBottomButton(
                  onPrised: (){},
                  childText: 'Register',
                )],
                    
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


