
import 'package:cadetbank/core/res/values/endpoints.dart';
import 'package:cadetbank/data/data_source/auth_data_source.dart';
import 'package:cadetbank/data/models/request/login_request.dart';
import 'package:dio/dio.dart';

class AuthRemoteDataSourceImpl implements AuthDataSource {
  final Dio dio;
  AuthRemoteDataSourceImpl(this.dio);
  
  @override
  Future<void> login(LoginRequest loginRequest) {
    return dio.post(Endpoints.login, data: loginRequest);
  }
}