import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_color.dart';

class CustomButtonArrow extends StatelessWidget {
  const CustomButtonArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).pop();
        },
        child: Container(
          alignment: Alignment.center,
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColor.kPrimaryColor),
          ),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColor.kBlackColor,
          ),
        ),
      ),
    );
  }
}
