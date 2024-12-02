import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oli_alazm_app/core/utils/app_color.dart';
import 'package:oli_alazm_app/core/utils/styles.dart';
import 'package:oli_alazm_app/core/widgets/custom_button.dart';

void showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      content: Container(
        width: 327,
        height: 401,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 55,
              backgroundColor: Colors.grey[200],
              child: const Icon(
                Icons.check,
                size: 100,
                color: AppColor.kPrimaryColor,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "تم بنجاح",
              style: Styles.textStyle24.copyWith(
                  color: const Color(0xFF101623), fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              "لقد تم إعادة تعيين كلمة المرور الخاصة بك بنجاح",
              style: Styles.textStyle16,
            ),
            const SizedBox(
              height: 26,
            ),
            GestureDetector(
                onTap: () {
                  GoRouter.of(context).pushReplacement('/SignInSignUpView');
                },
                child: const CustomButton(
                    style: Styles.textStyle18,
                    text: "تسجيل الدخول")),
          ],
        ),
      ),
    ),
  );
}
