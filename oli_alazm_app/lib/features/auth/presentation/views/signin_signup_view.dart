import 'package:flutter/material.dart';
import 'package:oli_alazm_app/features/auth/presentation/views/widgets/signin_signup_view_body.dart';

class SignInSignUpView extends StatelessWidget {
  const SignInSignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SignInSignUpViewBody(),
        ),
      ),
    );
  }
}