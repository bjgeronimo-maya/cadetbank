
import 'package:cadetbank/core/utils/result/result.dart';

abstract interface class AuthRepository {
  Future<Result<void>> login({
    required String username,
    required String password,
  });
}