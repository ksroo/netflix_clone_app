import 'package:get_it/get_it.dart';
import 'package:netflix/features/splash/presentation/splash_injection_container.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await splashInjectionContainer();
  ;
}
