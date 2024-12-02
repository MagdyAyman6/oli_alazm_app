import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

class CustomIconNotification extends StatelessWidget {
  const CustomIconNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomRight,
      child: Icon(
        Icons.notifications_active_rounded,
        color: AppColor.kGradientColor,
        size: 30,
      ),
    );
  }
}
