import 'package:get_it/get_it.dart';
import 'package:netflix/core/services/api_service.dart';
import 'package:netflix/core/services/dio_factory.dart';
import 'package:netflix/features/splash/presentation/splash_injection_container.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  final dio = DioFactory.getDio();

  sl.registerLazySingleton<ApiService>(() => ApiService(dio));
  
  await splashInjectionContainer();
  ;
}
