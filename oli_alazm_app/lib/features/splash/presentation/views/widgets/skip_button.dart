import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kSignInSignUpView);
      },
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(31),
          border: Border.all(
            color: AppColor.kOnboardingButtonColor,
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            "تخطي",
            style: Styles.textStyle20.copyWith(
              color: AppColor.kOnboardingButtonColor,
            ),
          ),
        ),
      ),
    );
  }
}
