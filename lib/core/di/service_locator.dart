import 'package:cadetbank/core/utils/dio_factory.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> setupDependencies() async {
  serviceLocator.registerLazySingleton<DioFactory>(() => const DioFactory());
}