
import 'package:cars_store/auth/screens/login_screen.dart';
import 'package:cars_store/cars/screens/audi_screen.dart';
import 'package:cars_store/cars/screens/bmw_screen.dart';
import 'package:cars_store/cars/screens/chevrolet_screen.dart';
import 'package:cars_store/cars/screens/ford_screen.dart';
import 'package:cars_store/cars/screens/jeep_screen.dart';
import 'package:cars_store/cars/screens/mercedes_screen.dart';
import 'package:cars_store/cars/screens/skoda_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_cubit_state.dart';

class AppCubit extends Cubit<AppCubitStates> {
  AppCubit() : super(AppCubitInitial());
  static AppCubit get(context) => BlocProvider.of(context);
   int selectedIndex = 0;

   void changeNavigationRail(index){
    selectedIndex=index;
    emit(ChangeNavigationRailState());

   }
   List<Widget> Screens = [
   BmwScreen(),
   MercedesScreen(),
   JeeptScreen(),
   AudiScreen(),
   SkodaScreen(),
   ChevroletScreen(),
   FordScreen(),
   
   
  ];
}
