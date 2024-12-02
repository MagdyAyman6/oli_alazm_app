import 'package:flutter/material.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
            radius: 50,
            child: Image.asset(
              height: 100,
              width: 100,
              AssetsData.profileImg,
              fit: BoxFit.fill,
            )),
        const SizedBox(
          height: 17,
        ),
        Text(
          "مجدى أيمن",
          style: Styles.textStyle20.copyWith(
              color: AppColor.kBlackColor, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
