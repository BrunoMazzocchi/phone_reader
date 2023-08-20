part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  final UserLoginModel userLoginModel;

  LoginSuccess(this.userLoginModel);
}

final class LoginError extends LoginState {
  final String message;

  LoginError(this.message);
}

final class LoginNeeded extends LoginState {}