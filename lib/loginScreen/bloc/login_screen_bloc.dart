import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_screen_event.dart';
part 'login_screen_state.dart';

class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  LoginScreenBloc() : super(LoginScreenInitial()) {
    on<LoginScreenEvent>((event, emit) {
      if (event is LoginEvent) {
        emit(LoginScreenSucesses());
      } else {
        emit(LoginScreenFailed());
      }
    });
  }
}
