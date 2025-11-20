import 'package:aulas_dart/aula_05/date_extension.dart';
import 'package:aulas_dart/aula_05/login_request.dart';
import 'package:aulas_dart/aula_05/login_state.dart';
import 'package:aulas_dart/aula_05/user_model.dart';

void main() {
  LoginState loginState = LoadingState();
  loginState = LoggedInState(
    UserModel(123, "yasmin_belo", "123hssd3", DateTime(2002, 12, 09)),
  );
  if (loginState is LoggedInState) {
    print(loginState.user.dataNascimento.formatarDataNascimento());
  }

  loginState = LoggedOutState();
  loginState = ErroState(Exception("erro ao logar"));
}
