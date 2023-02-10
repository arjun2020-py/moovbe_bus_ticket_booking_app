part of 'driver_details_bloc.dart';

@immutable
abstract class DriverDetailsState {}

class DriverDetailsInitial extends DriverDetailsState {}
class DriverSucessesState extends DriverDetailsState {
  
}
class DriverFailedState extends DriverDetailsState {
  
}
