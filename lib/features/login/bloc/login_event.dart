part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

final class LoginButtonPressed extends LoginEvent {
  final String username;
  final String password;

  LoginButtonPressed(this.username, this.password);
}

final class LoginInitialEvent extends LoginEvent {}

final class LoginSuccessEvent extends LoginEvent {
  final UserLoginModel userLoginModel;

  LoginSuccessEvent(this.userLoginModel);
}


