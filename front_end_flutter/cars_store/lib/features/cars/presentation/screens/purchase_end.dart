import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PurchaseEnd extends StatelessWidget {
  const PurchaseEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset('assets/images/SFmotors_front_view 1.jpg')
            ),
          Center(
            child: Padding(
              padding:  EdgeInsets.only(top: 430.h),
              child: Text('Purchase Sucessful.',
              style: TextStyle(
                fontSize: 50.sp,
                color: Colors.white
              ),
              ),
            ),
          ),
          
          
        ],
      ),

    );
  }
}