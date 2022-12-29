import 'package:cars_store/features/cars/screens/audi_screen.dart';
import 'package:cars_store/features/cars/screens/bmw_screen.dart';
import 'package:cars_store/features/cars/screens/chevrolet_screen.dart';
import 'package:cars_store/features/cars/screens/ford_screen.dart';
import 'package:cars_store/features/cars/screens/jeep_screen.dart';
import 'package:cars_store/features/cars/screens/mercedes_screen.dart';
import 'package:cars_store/features/cars/screens/skoda_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_cubit_state.dart';

class AppCubit extends Cubit<AppCubitStates> {
  AppCubit() : super(AppCubitInitial());
  static AppCubit get(context) => BlocProvider.of(context);
  int selectedIndex = 0;

  void changeNavigationRail(index) {
    selectedIndex = index;
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
