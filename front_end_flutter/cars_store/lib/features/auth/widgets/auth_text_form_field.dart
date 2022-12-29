import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTextFormField extends StatelessWidget {
  const AuthTextFormField({
   
    Key? key, required this.hintText,
  }) : super(key: key);
  final String hintText;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 90),
      child: TextFormField(
        
        decoration: InputDecoration(
          hintText: hintText,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(2.r))),
      ),
    );
  }
}
