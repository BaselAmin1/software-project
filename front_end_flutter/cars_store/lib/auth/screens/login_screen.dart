// ignore_for_file: prefer_const_literals_to_create_immutables

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
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.black,
                  width: 640,
                  height: 844,
                  child: Image.asset(
                    'assets/images/bmw 520i.jpg',
                    fit: BoxFit.cover,
                    ),
                  

                ),
                SizedBox(
                  

                ),
                Container(
                  
                  width: 640,
                  height: 844,
                  child:const Text(
                   'readyto.',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 40,
                   ),
                 ), 
                ),
                 
                 
              ],
            )

            
        ],
      ),
    );
  }
}