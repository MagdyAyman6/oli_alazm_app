import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/profile_avatar.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          height: 260,
          width: double.infinity,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 150,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColor.kPaleButterYellowColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(80),
              bottomLeft: Radius.circular(80),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "الملف الشخصي",
                style: Styles.textStyle20.copyWith(color: Colors.black),
              ),
              const SizedBox(
                width: 135,
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).pushReplacement('/MyHomeView');
                },
                child: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 24,
                ),
              ),
            ],
          ),
        ),
        const Positioned(right: 179, top: 105, child: ProfileAvatar()),
      ],
    );
  }
}
