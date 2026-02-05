
import 'package:cadetbank/domain/usecases/login_usecase.dart';
import 'package:cadetbank/presentation/screens/login/cubits/login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase _loginUseCase;
  LoginCubit(this._loginUseCase) : super(const LoginState.initial());

  void login({
    required String username,
    required String password,
  }) async {
    emit(const LoginState.loading());
    final result = await _loginUseCase(
      username: username,
      password: password,
    );

    result.when(
      success: (data) => emit(const LoginState.success()),
      failure: (error) => emit(LoginState.failed(error.message)),
    );
  }
}