part of 'login_cubit_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSucess extends LoginState {}

class LoginError extends LoginState {
  final String error;

  LoginError({required this.error});
}
