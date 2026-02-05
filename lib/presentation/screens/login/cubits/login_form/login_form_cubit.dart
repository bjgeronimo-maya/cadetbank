import 'package:cadetbank/presentation/screens/login/cubits/login_form/login_form_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginFormCubit extends Cubit<LoginFormState> {
  LoginFormCubit() : super(const LoginFormState());

  void usernameChanged(String username) {
    emit(state.copyWith(username: username));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(password: password));
  }
}
