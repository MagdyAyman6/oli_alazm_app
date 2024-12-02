import 'package:flutter/material.dart';
import 'package:oli_alazm_app/features/auth/presentation/views/widgets/custom_button_arrow.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, this.navBar = false});

  final String title;
  final bool navBar;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColor.kGradientColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  title,
                  style: Styles.textStyle24,
                ),
              ),
            ),
            if (!navBar) const CustomButtonArrow(),
          ],
        ),
      ),
    );
  }
}
