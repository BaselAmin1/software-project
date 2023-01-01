// ignore_for_file: prefer_const_constructors

import 'package:cars_store/app_logic/cubit/app_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarsLayout extends StatefulWidget {
  const CarsLayout({super.key});

  @override
  State<CarsLayout> createState() => _CarsLayoutState();
}

class _CarsLayoutState extends State<CarsLayout> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppCubitStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 60.h),
                        child: NavigationRail(
                          backgroundColor: Color.fromRGBO(245, 245, 245, 0),
                          selectedIconTheme: IconThemeData(color: Colors.black),
                          indicatorColor: Colors.black,
                          labelType: NavigationRailLabelType.all,
                          selectedIndex: AppCubit.get(context).selectedIndex,
                          onDestinationSelected: (index) {
                            AppCubit.get(context).changeNavigationRail(index);
                          },
                          // ignore: prefer_const_literals_to_create_immutables
                          destinations: [
                            // ignore: prefer_const_constructors
                            NavigationRailDestination(
                                icon: Visibility(
                                  visible: false,
                                  child: Icon(Icons.home),
                                ),
                                // ignore: prefer_const_constructors
                                label: Text(
                                  'BMW',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold),
                                )),
                            NavigationRailDestination(
                                icon: Visibility(
                                  visible: false,
                                  child: Icon(Icons.home),
                                ),
                                // ignore: prefer_const_constructors
                                label: Text(
                                  'Porsche',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold),
                                )),
                            NavigationRailDestination(
                                icon: Visibility(
                                  visible: false,
                                  child: Icon(Icons.home),
                                ),
                                // ignore: prefer_const_constructors
                                label: Text(
                                  'Ford',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold),
                                )),
                            NavigationRailDestination(
                                icon: Visibility(
                                  visible: false,
                                  child: Icon(Icons.home),
                                ),
                                // ignore: prefer_const_constructors
                                label: Text(
                                  'Ferrari',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold),
                                )),
                            // NavigationRailDestination(
                            //     icon: Visibility(
                            //       visible: false,
                            //       child: Icon(Icons.home),
                            //     ),
                            //     // ignore: prefer_const_constructors
                            //     label: Text(
                            //       'Skoda',
                            //       style: TextStyle(
                            //           fontSize: 20.sp,
                            //           fontWeight: FontWeight.bold),
                            //     )),
                            // NavigationRailDestination(
                            //     icon: Visibility(
                            //       visible: false,
                            //       child: Icon(Icons.home),
                            //     ),
                            //     // ignore: prefer_const_constructors
                            //     label: Text(
                            //       'Chevrolet',
                            //       style: TextStyle(
                            //           fontSize: 20.sp,
                            //           fontWeight: FontWeight.bold),
                            //     )),
                            // NavigationRailDestination(
                            //     icon: Visibility(
                            //       visible: false,
                            //       child: Icon(Icons.home),
                            //     ),
                            //     // ignore: prefer_const_constructors
                            //     label: Text(
                            //       'Ford',
                            //       style: TextStyle(
                            //           fontSize: 20.sp,
                            //           fontWeight: FontWeight.bold),
                            //     )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 160.w, top: 20.h),
                                      child: Text(
                                        'readyto.',
                                        style: TextStyle(
                                            fontSize: 37.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 200.w,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.h),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.person_outlined)),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.h),
                                      child: Text(
                                        'My account',
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.h),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.favorite_outline,
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.h),
                                      child: Text(
                                        'Favourites',
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 30.h, right: 20.w),
                                  child: Container(
                                    // ignore: sort_child_properties_last
                                    child: Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10.w),
                                          child: Icon(
                                            Icons.search_outlined,
                                          ),
                                        ),
                                        Text(
                                          'Search for Cars',
                                          style: TextStyle(fontSize: 15.sp),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(243, 244, 246, 1),
                                        borderRadius:
                                            BorderRadius.circular(20.r)),
                                    width: 70.w,
                                    height: 30.h,
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                                child: AppCubit.get(context).Screens[
                                    AppCubit.get(context).selectedIndex])
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
