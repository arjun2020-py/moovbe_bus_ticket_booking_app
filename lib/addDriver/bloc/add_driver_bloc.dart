import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_driver_event.dart';
part 'add_driver_state.dart';

class AddDriverBloc extends Bloc<AddDriverEvent, AddDriverState> {
  AddDriverBloc() : super(AddDriverInitial()) {
    on<AddDriverEvent>((event, emit) {
      if (event is AddEvent) {
        emit(AddSucessesState());
      } else {
        emit(AddFailedState());
      }
    });
  }
}
