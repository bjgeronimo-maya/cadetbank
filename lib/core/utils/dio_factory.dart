import 'package:cadetbank/core/res/values/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


class DioFactory {
  const DioFactory();

  Future<Dio> createDio() async {
    Dio dio = Dio();

    dio.options = BaseOptions(
      baseUrl: Constants.baseUrl,
      connectTimeout: Constants.apiTimeout,
      receiveTimeout: Constants.apiTimeout,
    );

    if(kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ));
    }

    return dio;
  }
}