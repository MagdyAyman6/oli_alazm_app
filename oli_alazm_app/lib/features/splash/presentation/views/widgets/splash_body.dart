import 'package:flutter/material.dart';
import 'package:oli_alazm_app/core/utils/assets.dart';
import 'package:oli_alazm_app/features/splash/presentation/views/onboarding_view.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goToOnBoarding();
  }

  goToOnBoarding() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
        return const OnboardingView();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.splash),
          ),
        ),
      ),
    );
  }
}
