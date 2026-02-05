
import 'package:cadetbank/core/res/errors/error.dart';
import 'package:cadetbank/core/utils/result/result.dart';
import 'package:cadetbank/data/data_source/auth_data_source.dart';
import 'package:cadetbank/data/models/request/login_request.dart';
import 'package:cadetbank/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource authDataSource;
  AuthRepositoryImpl(this.authDataSource);

  @override
  Future<Result<void>> login({required String username, required String password}) async {
    try {
      final request = LoginRequest(username: username, password: password);
      final response = await authDataSource.login(request);
      return Result.success(response);
    } catch (_) {
      return Result.failure(const DefaultError());
    }
  }
}