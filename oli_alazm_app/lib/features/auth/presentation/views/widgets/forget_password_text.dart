import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';

class ForgetPasswordText extends StatelessWidget {
  const ForgetPasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kForgetPassView);
        },
        child: Text(
          "نسيت كلمة المرور؟",
          style: Styles.textStyle14.copyWith(
            color: AppColor.kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
