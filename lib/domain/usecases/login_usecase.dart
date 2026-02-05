
import 'package:cadetbank/core/utils/result/result.dart';
import 'package:cadetbank/domain/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository authRepository;
  const LoginUseCase(this.authRepository);

  Future<Result<void>> call({
    required String username,
    required String password,
  }) {
    return authRepository.login(username: username, password: password);
  }
}