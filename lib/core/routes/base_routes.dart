import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage<dynamic> buildScaleTransitionPage({
  required Widget page,
}) {
  return CustomTransitionPage<void>(
    child: page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = 0.0;
      const end = 1.0;
      final tween = Tween(begin: begin, end: end);
      final curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: Curves.linearToEaseOut,
      );

      return ScaleTransition(
        scale: tween.animate(curvedAnimation),
        child: child,
      );
    },
  );
}
