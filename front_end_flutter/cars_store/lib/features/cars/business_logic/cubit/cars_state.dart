part of 'cars_cubit.dart';

@immutable
abstract class CarsState {}

class CarsInitial extends CarsState {}

class CarsLoaded extends CarsState {
  final List<Cars> characters;

  CarsLoaded(this.characters);
}
