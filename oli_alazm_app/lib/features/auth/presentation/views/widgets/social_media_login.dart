import 'package:flutter/material.dart';
import 'package:oli_alazm_app/core/utils/app_color.dart';
import 'package:oli_alazm_app/core/utils/assets.dart';
import 'package:oli_alazm_app/core/utils/styles.dart';

class SocialMediaLogin extends StatelessWidget {
  const SocialMediaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 48,
          ),
          Text(
            "خيارات تسجيل الدخول الأخرى",
            style: Styles.textStyle14.copyWith(color: AppColor.kBlackColor),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AssetsData.appleImg,
                height: 50,
                width: 50,
              ),
              const SizedBox(width: 10),
              Image.asset(
                AssetsData.googleImg,
                height: 50,
                width: 50,
              ),
              const SizedBox(width: 10),
              Image.asset(
                AssetsData.facebookImg,
                height: 50,
                width: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
