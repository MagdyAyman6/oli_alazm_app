import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oli_alazm_app/core/utils/app_color.dart';
import 'package:oli_alazm_app/core/utils/app_router.dart';
import 'package:oli_alazm_app/core/utils/styles.dart';
import 'package:oli_alazm_app/core/widgets/custom_button.dart';
import 'package:oli_alazm_app/core/widgets/custom_form_field.dart';
import 'package:oli_alazm_app/features/auth/presentation/views/widgets/custom_button_arrow.dart';

class ForgetPasswordBodyView extends StatelessWidget {
  const ForgetPasswordBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: const CustomButtonArrow()),
              Text(
                "نسيت كلمة المرور؟",
                style:
                    Styles.textStyle24.copyWith(color: AppColor.kPrimaryColor),
              ),
              const Text(
                textAlign: TextAlign.end,
                "أدخل بريدك الإلكتروني لإعادة تعيين كلمة المرور الخاصة بك، وسنرسل لك رمز التأكيد",
                style: Styles.textStyle16,
              ),
              const SizedBox(
                height: 48,
              ),
              Text(
                "البريد الالكتروني",
                style: Styles.textStyle16.copyWith(color: Colors.black),
              ),
              const SizedBox(
                height: 12,
              ),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: CustomFormField(
                  keyboardType: TextInputType.emailAddress,
                  hint: "ادخل بريدك الالكتروني",
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kVerificationCodeView);
                  },
                  child: const CustomButton(
                      style: Styles.textStyle18,
                      text: "ارسال")),
            ],
          ),
        ),
      ),
    );
  }
}
