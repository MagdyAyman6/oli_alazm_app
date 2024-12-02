import 'package:flutter/material.dart';
import 'package:oli_alazm_app/features/auth/presentation/views/widgets/head_page.dart';
import 'package:oli_alazm_app/features/auth/presentation/views/widgets/signin_signup_form.dart';
import 'package:oli_alazm_app/features/auth/presentation/views/widgets/social_media_login.dart';

class SignInSignUpViewBody extends StatefulWidget {
  const SignInSignUpViewBody({super.key});

  @override
  State<SignInSignUpViewBody> createState() => _SignInSignUpViewBodyState();
}

class _SignInSignUpViewBodyState extends State<SignInSignUpViewBody> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeadPage(),
            SizedBox(height: 15),
            SigninSignupForm(),
            SocialMediaLogin(),
            SizedBox(height: 50,),
          ],
        ),
      ),
    ));
  }
}
