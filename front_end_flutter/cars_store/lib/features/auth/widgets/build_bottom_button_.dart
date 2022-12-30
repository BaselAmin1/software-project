import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildBottomButton extends StatefulWidget {
  const BuildBottomButton({
    
    required this.childText,
    required this.onPrised,
    Key? key, 
  }) : super(key: key);
  final Function onPrised;
  final String childText;
 
  @override
  State<BuildBottomButton> createState() => _build_bottomState();
}

class _build_bottomState extends State<BuildBottomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.w, top: 30.h, right: 22.w),
        child: Container(
          height: 50.h,
          width: 342.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Color.fromRGBO(29, 78, 216, 1)),
          child: MaterialButton(
            onPressed: () => widget.onPrised(),
            child: Text(
              '${widget.childText}',
              style: TextStyle(color: Colors.white, fontSize: 20.sp),
            ),
          ),
        ));
  }
}
