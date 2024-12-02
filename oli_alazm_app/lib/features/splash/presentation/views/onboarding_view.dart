import 'package:flutter/material.dart';
import 'package:oli_alazm_app/features/splash/presentation/views/widgets/on_boarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OnboardingViewBody(),
      ),
    );
  }
}
