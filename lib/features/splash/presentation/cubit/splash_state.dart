part of 'splash_cubit.dart';

enum SplashStatus {
  displaySplash,
  authenticated,
  unAuthenticated,
}

extension SplashStatusX on SplashState {
  bool get isDisplaySplash => status == SplashStatus.displaySplash;
  bool get isAuthenticated => status == SplashStatus.authenticated;
  bool get isUnAuthenticated => status == SplashStatus.unAuthenticated;
}

@immutable
class SplashState {
  final SplashStatus status;

  const SplashState({
    required this.status,
  });

  SplashState copyWith({
    SplashStatus? status,
  }) {
    return SplashState(
      status: status ?? this.status,
    );
  }
}
