import 'package:cars_store/features/cars/business_logic/cubit/cars_cubit.dart';
import 'package:cars_store/features/cars/data/repository/cars_repository.dart';
import 'package:cars_store/features/cars/data/web_sevices/cars_web_services.dart';
import 'package:cars_store/features/cars/presentation/screens/audi_screen.dart';
import 'package:cars_store/features/cars/presentation/screens/bmw_screen.dart';
import 'package:cars_store/features/cars/presentation/screens/chevrolet_screen.dart';
import 'package:cars_store/features/cars/presentation/screens/ford_screen.dart';
import 'package:cars_store/features/cars/presentation/screens/jeep_screen.dart';
import 'package:cars_store/features/cars/presentation/screens/mercedes_screen.dart';
import 'package:cars_store/features/cars/presentation/screens/skoda_screen.dart';
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
    BlocProvider(
      create: (context) => CarsCubit(CarsRepository(CarsWebServices())),
      child: BmwScreen(),
    ),
    //MercedesScreen(),
    JeeptScreen(),
    AudiScreen(),
    SkodaScreen(),
   //ChevroletScreen(),
    FordScreen(),
  ];
}
