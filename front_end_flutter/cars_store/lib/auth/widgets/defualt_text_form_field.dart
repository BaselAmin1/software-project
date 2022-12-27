import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget DefaultTextFormField({
  context,
  TextEditingController? controller,
  dynamic label,
  IconData? prefixIcon,
  Widget? prefixIconWidget,
  TextInputType? keyboardType,
  Function(String)? onSubmit,
  onChange,
  onTap,
  String? Function(String?)? validation,
  bool isPassword = false,
  IconData? suffixIcon,
  suffixPressed,
  String? hintText,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isPassword,
      textAlign: TextAlign.start,
      onFieldSubmitted: onSubmit,
    
      onChanged: onChange,
      onTap: onTap,
      validator: validation,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.r)),
        hintText: label,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 12.sp,
        ),
        contentPadding: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
        prefixIcon: Icon(
          prefixIcon,
        ),
        
        
      ),
    );
