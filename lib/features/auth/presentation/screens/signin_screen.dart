import 'package:flutter/material.dart';
import 'package:netflix/features/auth/presentation/refactors/signin_body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(top: 100, right: 16, left: 16),
        child: SignInBody(),
      ),
    );
  }
}
