import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oli_alazm_app/core/utils/app_color.dart';
import 'package:oli_alazm_app/core/utils/styles.dart';
import 'package:oli_alazm_app/core/widgets/custom_button.dart';
import 'package:oli_alazm_app/features/auth/presentation/views/widgets/accept_terms_check_box.dart';
import 'package:oli_alazm_app/features/auth/presentation/views/widgets/forget_password_text.dart';
import 'package:oli_alazm_app/features/auth/presentation/views/widgets/form_item.dart';
import 'package:oli_alazm_app/features/auth/presentation/views/widgets/tab_bar_title.dart';

import '../../../../../core/utils/app_router.dart';

class SigninSignupForm extends StatefulWidget {
  const SigninSignupForm(
      {super.key,
      this.text,
      this.hint,
      this.maxLines,
      this.onChanged,
      this.onSaved,
      this.obscureText = false,
      this.keyboardType,
      this.validator});

  final String? text;
  final String? hint;
  final int? maxLines;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  @override
  State<SigninSignupForm> createState() => _SigninSignupFormState();
}

class _SigninSignupFormState extends State<SigninSignupForm> {
  bool isSignIn = false;
  late bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        TabBarTitle(
          isSignIn: isSignIn,
          onTabChanged: (value) => setState(() {
            isSignIn = value;
          }),
        ),
        const SizedBox(height: 40),
        const FormItem(
          text: "البريد الالكتروني",
          hint: "ادخل بريدك الالكتروني",
          keyboardType: TextInputType.emailAddress,
        ),
        const FormItem(
          text: "كلمة المرور",
          hint: "ادخل كلمة المرور",
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          maxLines: 1,
        ),
        if (isSignIn == true)
          const FormItem(
            text: "تأكيد كلمة المرور",
            hint: "ادخل كلمة المرور",
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            maxLines: 1,
          ),
        if (isSignIn == true)
          AcceptTermsCheckBox(
            isChecked: isChecked,
            onTap: () {
              setState(() {
                isChecked = !isChecked;
              });
            },
          ),
        if (isSignIn == false) const ForgetPasswordText(),
        const SizedBox(height: 64),
        CustomButton(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kMyHomeView);
          },
          style: Styles.textStyle18,
          text: "تسجيل الدخول",
          color: AppColor.kPrimaryColor,
        ),
      ]),
    );
  }
}
