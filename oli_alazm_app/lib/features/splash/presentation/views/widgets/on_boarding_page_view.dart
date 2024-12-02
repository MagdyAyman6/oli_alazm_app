import 'package:flutter/material.dart';
import 'package:oli_alazm_app/core/utils/assets.dart';
import 'on_boarding_page.dart';

class OnboardingPageView extends StatelessWidget {
  final PageController controller;
  final Function(int) onPageChanged;
  final void Function()? onTap;

  const OnboardingPageView({super.key,
    required this.controller,
    required this.onPageChanged,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      onPageChanged: onPageChanged,
      children:  [
        OnboardingPage(
          onTap: onTap,
          image: AssetsData.onBoarding1,
          title: "مرحباً!",
          subTitle:
          "ابدأ رحلتك في حفظ القرآن بسهولة وبالوتيرة التي تناسبك.",
        ),
        OnboardingPage(
          onTap: onTap,
          image: AssetsData.onBoarding2,
          title: "خطط مخصصة",
          subTitle:
          "ضع أهدافك الخاصة وتلقَّ تذكيرات مخصصة لتبقى على المسار.",
        ),
        OnboardingPage(
          onTap: onTap,
          image: AssetsData.onBoarding3,
          title: "حافظ على التحفيز",
          subTitle:
          "استلم تذكيرات يومية وآيات ملهمة تبقيك متصلاً بالقرآن.",
        ),
      ],
    );
  }
}