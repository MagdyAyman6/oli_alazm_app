import 'package:flutter/material.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class TabBarTitle extends StatelessWidget {
  const TabBarTitle(
      {super.key, required this.isSignIn, required this.onTabChanged});

  final bool isSignIn;
  final ValueChanged<bool> onTabChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: AppColor.kTabBarColor,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    !isSignIn ? Colors.white : AppColor.kTabBarColor,
                shadowColor: !isSignIn ? null : Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () => onTabChanged(false),
              child: Text(
                "تسجيل الدخول",
                style: Styles.textStyle16.copyWith(
                  color: !isSignIn ? AppColor.kPrimaryColor : Colors.black,
                ),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    isSignIn ? AppColor.kWhiteColor : AppColor.kTabBarColor,
                shadowColor: isSignIn ? null : Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () => onTabChanged(true),
              child: Text(
                "إنشاء حساب",
                style: Styles.textStyle16.copyWith(
                  color: isSignIn ? AppColor.kPrimaryColor : Colors.black,
                ),
              )),
        ],
      ),
    );
  }
}
