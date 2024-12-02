import 'package:flutter/material.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class MuhaffidhonSectionHeader extends StatelessWidget {
  const MuhaffidhonSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 18,
                color: AppColor.kPrimaryColor,
              ),
              Text(
                "عرض الكل",
                style:
                    Styles.textStyle16.copyWith(color: AppColor.kPrimaryColor),
              ),
            ],
          ),
          Text(
            "المُحفظون",
            style: Styles.textStyle20.copyWith(
              color: AppColor.kBlackColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
