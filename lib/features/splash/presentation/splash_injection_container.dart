import 'package:netflix/core/app/app_injection_container.dart';
import 'package:netflix/features/splash/presentation/cubit/splash_cubit.dart';

Future<void> splashInjectionContainer() async {
  // * BLOCS INJECTION

  sl.registerFactory(() => SplashCubit());

  // * USE CASES INJECTION

  // * REPOSITORY

  // * DATA SOURCES INJECTION
}
