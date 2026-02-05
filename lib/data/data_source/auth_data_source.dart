
import 'package:cadetbank/data/models/request/login_request.dart';

abstract class AuthDataSource {
  Future<void> login(LoginRequest loginRequest);
}