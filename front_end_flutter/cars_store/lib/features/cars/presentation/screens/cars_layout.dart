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
            body: Row(
              children: [
                NavigationRail(
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
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        )),
                    NavigationRailDestination(
                        icon: Visibility(
                          visible: false,
                          child: Icon(Icons.home),
                        ),
                        // ignore: prefer_const_constructors
                        label: Text(
                          'Mercedes',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        )),
                    NavigationRailDestination(
                        icon: Visibility(
                          visible: false,
                          child: Icon(Icons.home),
                        ),
                        // ignore: prefer_const_constructors
                        label: Text(
                          'Jeep',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        )),
                    NavigationRailDestination(
                        icon: Visibility(
                          visible: false,
                          child: Icon(Icons.home),
                        ),
                        // ignore: prefer_const_constructors
                        label: Text(
                          'Audi',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        )),
                    NavigationRailDestination(
                        icon: Visibility(
                          visible: false,
                          child: Icon(Icons.home),
                        ),
                        // ignore: prefer_const_constructors
                        label: Text(
                          'Skoda',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        )),
                    NavigationRailDestination(
                        icon: Visibility(
                          visible: false,
                          child: Icon(Icons.home),
                        ),
                        // ignore: prefer_const_constructors
                        label: Text(
                          'Chevrolet',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
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
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                Expanded(
                    child: AppCubit.get(context)
                        .Screens[AppCubit.get(context).selectedIndex])
              ],
            ),
          );
        },
      ),
    );
  }
}
