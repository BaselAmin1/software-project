import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildCars extends StatelessWidget {
  const BuildCars({
    Key? key, required this.carName, required this.carPrice, required this.carImage,
   
  }) : super(key: key);
final String carName;
final String carPrice;
final Image carImage;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 60.w, top: 108.h),
      child: Container(
        width: 290.w,
        height: 624.h,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(blurRadius: 5.r, color: Colors.grey),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r)),
        child: GridView.builder(
      // ignore: prefer_const_constructors
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      
        childAspectRatio: 2/2 ,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount:6 ,
      itemBuilder: (context, index) {
        return   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Padding(
                  padding:  EdgeInsets.only(left: 16.w, top: 18.h),
                  child: Container(
                    width: 70.w,
                    height: 207.h,
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
                         carName,
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                        Row(

                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Text(
                                carPrice,
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Image.asset('assets/images/trend.png')
                          ],
                        ),
                       carImage
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Icon(
                       Icons.check_box_outline_blank,
                     ),
                     SizedBox(
                      width: 2.w,

                     ),
                Text('Available',
                style: TextStyle(
                  fontSize: 15.sp
                ),
                ),

                  ],
                ),
               


          ]


           
        );
      },
    ),
      ),
    );
  }
}
