import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:netflix/core/helper/spacing.dart';
import 'package:netflix/core/routes/router.dart';
import 'package:netflix/features/auth/presentation/widgets/custom_button.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// Sign Up Text
        const Text(
          'Sign Up',
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

        /// Sign Up Button
        CustomButton(
          onPressed: () {},
          text: 'Sign Up',
        ),

        verticalSpace(20),

        /// Sign IN Text Button
        Text.rich(
          TextSpan(
            children: [
              const TextSpan(text: "Do you have account? "),
              TextSpan(
                text: "Sign IN",
                style: const TextStyle(
                  color: Colors.blue,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    context.pushReplacementNamed(AppRouter.singin);
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
