part of 'router.dart';

class AppRouter {
  const AppRouter._();

  static const String splash = '/splash';
  static const String singin = '/singin';
  static const String signup = '/signup';
  static const String home = '/home';

  static final GoRouter router = GoRouter(
    initialLocation: splash,
    debugLogDiagnostics: true,
    routes: [
      /// Splash Screen
      _splashScreen(),

      /// Singin Screen
      _singinScreen(),

      /// Signup Screen
      _signupScreen(),

      /// Home Screen
      _homeScreen(),
    ],
  );

  static GoRoute _splashScreen() {
    return GoRoute(
      name: splash,
      path: splash,
      pageBuilder: (context, state) {
        return buildScaleTransitionPage(
          page: BlocProvider(
            create: (context) => sl<SplashCubit>()..appStarted(),
            child: const SplashScreen(),
          ),
        );
      },
    );
  }

  static GoRoute _singinScreen() {
    return GoRoute(
      name: singin,
      path: singin,
      pageBuilder: (context, state) {
        return buildScaleTransitionPage(
          page: const SignInScreen(),
        );
      },
    );
  }

  static _signupScreen() {
    return GoRoute(
      name: signup,
      path: signup,
      pageBuilder: (context, state) {
        return buildScaleTransitionPage(
          page: const SignUpScreen(),
        );
      },
    );
  }

  static _homeScreen() {
    return GoRoute(
      name: home,
      path: home,
      pageBuilder: (context, state) {
        return buildScaleTransitionPage(
          page: const HomeScreen(),
        );
      },
    );
  }
}
