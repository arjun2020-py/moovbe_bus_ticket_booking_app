import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'driver_details_event.dart';
part 'driver_details_state.dart';

class DriverDetailsBloc extends Bloc<DriverDetailsEvent, DriverDetailsState> {
  DriverDetailsBloc() : super(DriverDetailsInitial()) {
    on<DriverDetailsEvent>((event, emit) {
      if (event is DriverEvent) {
        emit(DriverSucessesState());
      } else {
        emit(DriverFailedState());
      }
    });
  }
}
