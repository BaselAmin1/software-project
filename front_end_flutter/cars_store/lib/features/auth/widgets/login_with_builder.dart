import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginWithBuilder extends StatelessWidget {
  const LoginWithBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding:  EdgeInsets.only(left: 20.w),
          child: Container(
            // ignore: sort_child_properties_last
            child: Row(
              children: [
               Image.asset('assets/images/google.png',
               width: 30.w,
               height: 30.h,
               ),
              
               Text('Login with Google',
               style: TextStyle(
                fontSize: 17.sp
               ),
               ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              border: Border.all(color: Colors.grey)
            
            ),
            width: 80.w,
            height: 60.h,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 5.w),
          child: Container(
            // ignore: sort_child_properties_last
            child: Row(
              children: [
               Image.asset('assets/images/Facebook.png',
               width: 30.w,
               height: 30.h,
               ),
              
               Text('Login with Facebook',
               style: TextStyle(
                fontSize: 17.sp,
                color: Color.fromRGBO(29, 78, 216, 1)
               ),
               ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              border: Border.all(color: Colors.grey)
            
            ),
            width: 80.w,
            height: 60.h,
          ),
        ),
      ],
    );
  }
}
