import 'package:flutter/material.dart';
import 'package:netflix/core/styles/app_images.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.splashBackground,
              ),
            ),
          ),
        ),
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
    );
  }
}
