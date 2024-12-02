import 'package:flutter/material.dart';
import 'package:oli_alazm_app/core/utils/app_color.dart';

import '../../../../../core/utils/styles.dart';

class AcceptTermsCheckBox extends StatelessWidget {
  const AcceptTermsCheckBox({super.key, required this.isChecked, this.onTap});

  final bool isChecked;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
                color: isChecked == false
                    ? AppColor.kWhiteColor
                    : AppColor.kPrimaryColor,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: AppColor.kGrayTextColor)),
            child: isChecked
                ? const Icon(
                    size: 20,
                    Icons.check,
                    color: AppColor.kWhiteColor,
                  ) // Checkmark icon
                : null,
          ),
        ),
        const SizedBox(width: 10),
        RichText(
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
            text: 'أوافق على',
            style: Styles.textStyle14,
            children: [
              TextSpan(
                text: ' شروط خدمة',
                style: Styles.textStyle16.copyWith(
                  color: AppColor.kPrimaryColor,
                ),
              ),
              const TextSpan(
                text: ' المنصة',
                style: Styles.textStyle14,
              ),
              TextSpan(
                text: ' وسياسة\nالخصوصية',
                style: Styles.textStyle16.copyWith(
                  color: AppColor.kPrimaryColor,
                  height: 1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
