import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'intro_screen_event.dart';
part 'intro_screen_state.dart';

class IntroScreenBloc extends Bloc<IntroScreenEvent, IntroScreenState> {
  IntroScreenBloc() : super(IntroScreenInitial()) {
    on<IntroScreenEvent>((event, emit) {
      if (event is IntroEvent) {
        emit(IntroScreenSucesses());
      } else {
        emit(IntroScreenFailed());
      }
    });
  }
}
