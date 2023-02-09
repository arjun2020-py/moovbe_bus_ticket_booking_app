part of 'login_screen_bloc.dart';

@immutable
abstract class LoginScreenState {}

class LoginScreenInitial extends LoginScreenState {}
class LoginScreenSucesses extends LoginScreenState {
  
}
class LoginScreenFailed extends LoginScreenState {
  
}
