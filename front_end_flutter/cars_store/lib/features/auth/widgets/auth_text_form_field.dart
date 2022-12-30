import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTextFormField extends StatelessWidget {
   AuthTextFormField({
   
    Key? key, required this.hintText,
     this.suffix,
  }) : super(key: key);
  final String hintText;
  final Widget? suffix;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 90),
      child: TextFormField(
        
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffix,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(2.r))),
      ),
    );
  }
}
