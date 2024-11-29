import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:netflix/core/routes/router.dart';
import 'package:netflix/core/styles/app_images.dart';
import 'package:netflix/features/splash/presentation/cubit/splash_cubit.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        /// Navigate to Sign In Screen
        if (state.isUnAuthenticated) {
          context.pushReplacementNamed(AppRouter.singin);
        }

        /// Navigate to Home Screen
        if (state.isAuthenticated) {
          context.pushReplacementNamed(AppRouter.home);
        }
      },
      child: Stack(
        children: [
          /// Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppImages.splashBackground,
                ),
              ),
            ),
          ),

          /// Gradient Overlay on Background Image
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xff1A1B20).withOpacity(0),
                  const Color(0xff1A1B20)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
