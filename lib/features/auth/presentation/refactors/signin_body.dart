import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:netflix/core/helper/spacing.dart';
import 'package:netflix/core/routes/router.dart';
import 'package:netflix/features/splash/presentation/refactors/splash_body.dart';

import '../widgets/custom_button.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// Sign IN Text
        const Text(
          'Sign In',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),

        verticalSpace(30),

        /// Email Text Field
        const TextField(
          decoration: InputDecoration(
            labelText: 'Email',
          ),
        ),

        verticalSpace(20),

        /// Password Text Field
        const TextField(
          decoration: InputDecoration(
            labelText: 'Password',
          ),
        ),

        verticalSpace(60),

        /// Sign In Button
        CustomButton(
          onPressed: () {},
          text: 'Sign In',
        ),

        verticalSpace(20),

        /// Sign Up Text Button
        Text.rich(
          TextSpan(
            children: [
              const TextSpan(text: "Don't have an account? "),
              TextSpan(
                text: "Sign Up",
                style: const TextStyle(
                  color: Colors.blue,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    context.push(AppRouter.signup);
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
