import 'package:flutter/material.dart';
import 'package:oli_alazm_app/features/auth/presentation/views/widgets/custom_show_dialog.dart';
import 'package:oli_alazm_app/features/auth/presentation/views/widgets/pin_input_section.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'custom_button_arrow.dart';

class VerificationCodeBody extends StatelessWidget {
  const VerificationCodeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const CustomButtonArrow(),
              Text(
                "رمز التحقق",
                style:
                    Styles.textStyle24.copyWith(color: AppColor.kPrimaryColor),
              ),
              const Text(
                textAlign: TextAlign.end,
                "*****أدخل الرمز الذي أرسلناه إلى رقمك 012345",
                style: Styles.textStyle16,
              ),
              const SizedBox(
                height: 48,
              ),
              const PinInputSection(),
              const SizedBox(
                height: 57,
              ),
              GestureDetector(
                  onTap: () {
                    showAlertDialog(context);
                  },
                  child: const CustomButton(
                      style: Styles.textStyle18,
                      text: "تحقق")),
              const SizedBox(
                height: 48,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
