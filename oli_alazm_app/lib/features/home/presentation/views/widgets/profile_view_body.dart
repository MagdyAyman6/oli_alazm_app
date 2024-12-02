import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oli_alazm_app/core/utils/assets.dart';
import 'package:oli_alazm_app/core/utils/styles.dart';
import 'package:oli_alazm_app/core/widgets/custom_button.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/list_tile_profile.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/profile_header.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ProfileHeader(),
        const SizedBox(
          height: 25,
        ),
        ListTileProfile(
          onTap: () {},
          title: "تعديل الملف الشخصي",
          iconPath: AssetsData.profileEditIcon,
        ),
        ListTileProfile(
          onTap: () {},
          title: "عدد النقاط",
          iconPath: AssetsData.profilePointsIcon,
        ),
        ListTileProfile(
          onTap: () {},
          title: "المُحفظ",
          iconPath: AssetsData.profileAlmohaffidhIcon,
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          margin: const EdgeInsets.only(right: 230),
          height: 45,
          width: 190,
          child: CustomButton(
            onTap: () {
              GoRouter.of(context).pushReplacement('/SignInSignUpView');
            },
            style: Styles.textStyle18,
            text: "تسجيل الخروج",
          ),
        ),
      ],
    );
  }
}
