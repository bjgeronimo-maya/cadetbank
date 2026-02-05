import 'package:cadetbank/core/utils/dio_factory.dart';
import 'package:cadetbank/data/data_source/auth_data_source.dart';
import 'package:cadetbank/data/data_source/remote/auth_remote_data_source_impl.dart';
import 'package:cadetbank/data/repositories/auth_repository_impl.dart';
import 'package:cadetbank/domain/repositories/auth_repository.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> setupDependencies() async {
  serviceLocator.registerLazySingleton<DioFactory>(() => const DioFactory());
  final dio = await serviceLocator<DioFactory>().createDio();

  serviceLocator.registerLazySingleton<AuthDataSource> (() => AuthRemoteDataSourceImpl(dio)); //singleton instance ng AuthDataSource

  serviceLocator.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(serviceLocator())); //singleton instance ng AuthRepository // serviceLocator() will automatically resolve the dependency ng AuthDataSource
}