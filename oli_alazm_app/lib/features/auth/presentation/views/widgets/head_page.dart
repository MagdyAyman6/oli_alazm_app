import 'package:flutter/material.dart';
import 'package:oli_alazm_app/core/utils/styles.dart';
import 'package:oli_alazm_app/features/auth/presentation/views/widgets/gradient_text.dart';

class HeadPage extends StatelessWidget {
  const HeadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        GradientText(
          text: "أولي العزم",
          style: Styles.textStyle32,
        ),
        SizedBox(height: 7),
        Text(
          "قم بتسجيل الدخول أو إنشاء حساب جديد \nلحفظ تقدمك",
          textAlign: TextAlign.center,
          style: Styles.textStyle16,
        ),
      ],
    );
  }
}
