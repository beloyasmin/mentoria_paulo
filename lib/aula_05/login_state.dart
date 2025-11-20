import 'package:aulas_dart/aula_05/user_model.dart';

sealed class LoginState {}

class LoadingState implements LoginState {}

class ErroState implements LoginState {
  final Exception exception;

  const ErroState(this.exception);
}

class LoggedInState implements LoginState {
  final UserModel user;

  const LoggedInState(this.user);
}

class LoggedOutState implements LoginState {}

class TesteState extends LoggedInState{
  TesteState(super.user);
}
