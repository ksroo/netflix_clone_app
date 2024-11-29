part of 'router.dart';

class AppRouter {
  const AppRouter._();

  static const String splash = '/splash';

  static final GoRouter router = GoRouter(
    initialLocation: splash,
    debugLogDiagnostics: true,
    routes: [
      /// Splash Screen
      _splashScreen(),
    ],
  );

  static GoRoute _splashScreen() {
    return GoRoute(
      name: splash,
      path: splash,
      pageBuilder: (context, state) {
        return buildScaleTransitionPage(
          page: const SplashScreen(),
        );
      },
    );
  }
}
