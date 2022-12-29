import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildCars extends StatelessWidget {
  const BuildCars({
    Key? key,
    required this.firstRowOfCarsName,
    required this.firstRowOfCarsPrice,
    required this.firstRowOfCarsImage,
    required this.secondRowOfCarsName,
    required this.secondRowOfCarsPrice,
    required this.secondRowOfCarsImage,
  }) : super(key: key);

  final String firstRowOfCarsName;

  final String firstRowOfCarsPrice;

  final Image firstRowOfCarsImage;

  final String secondRowOfCarsName;

  final String secondRowOfCarsPrice;

  final Image secondRowOfCarsImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 60.w, top: 168.h),
      child: Container(
        width: 940,
        height: 624.h,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(blurRadius: 5.r, color: Colors.grey),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r)),
        child: Column(
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 56, top: 58),
                  child: Container(
                    width: 212,
                    height: 207,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(blurRadius: 5.r, color: Colors.grey),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.r)),
                    child: Column(
                      children: [
                        Text(
                          firstRowOfCarsName,
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Text(
                                firstRowOfCarsPrice,
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        firstRowOfCarsImage,
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 56, top: 58),
                  child: Container(
                    width: 212,
                    height: 207,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(blurRadius: 5.r, color: Colors.grey),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.r)),
                    child: Column(
                      children: [
                        Text(
                          firstRowOfCarsName,
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Text(
                                firstRowOfCarsPrice,
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        firstRowOfCarsImage
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 56, top: 58),
                  child: Container(
                    width: 212,
                    height: 207,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(blurRadius: 5.r, color: Colors.grey),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.r)),
                    child: Column(
                      children: [
                        Text(
                          firstRowOfCarsName,
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Text(
                                firstRowOfCarsPrice,
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        firstRowOfCarsImage
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 56, top: 58),
                  child: Container(
                    width: 212,
                    height: 207,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(blurRadius: 5.r, color: Colors.grey),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.r)),
                    child: Column(
                      children: [
                        Text(
                          secondRowOfCarsName,
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Text(
                                secondRowOfCarsPrice,
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        secondRowOfCarsImage
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 56, top: 58),
                  child: Container(
                    width: 212,
                    height: 207,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(blurRadius: 5.r, color: Colors.grey),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.r)),
                    child: Column(
                      children: [
                        Text(
                          secondRowOfCarsName,
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Text(
                                secondRowOfCarsPrice,
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        secondRowOfCarsImage
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 56, top: 58),
                  child: Container(
                    width: 212,
                    height: 207,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(blurRadius: 5.r, color: Colors.grey),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.r)),
                    child: Column(
                      children: [
                        Text(
                          secondRowOfCarsName,
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Text(
                                secondRowOfCarsPrice,
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        secondRowOfCarsImage
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
