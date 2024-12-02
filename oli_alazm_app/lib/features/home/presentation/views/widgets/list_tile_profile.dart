import 'package:flutter/material.dart';
import 'package:oli_alazm_app/core/utils/app_color.dart';
import 'package:oli_alazm_app/core/utils/styles.dart';

class ListTileProfile extends StatelessWidget {
  const ListTileProfile(
      {super.key, required this.title, required this.iconPath, this.onTap});

  final String title;
  final String iconPath;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          ListTile(
            onTap: onTap,
            title: Text(
              title,
              style: Styles.textStyle20.copyWith(
                color: AppColor.kBlackColor,
              ),
            ),
            leading: Image.asset(
              iconPath,
              height: 24,
              width: 24,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_sharp,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
