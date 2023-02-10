part of 'add_driver_bloc.dart';

@immutable
abstract class AddDriverState {}

class AddDriverInitial extends AddDriverState {}
class AddSucessesState extends AddDriverState {
  
}
class AddFailedState extends AddDriverState {
  
}