import 'package:flutter/material.dart';
import 'package:oli_alazm_app/core/utils/app_color.dart';

class GradientText extends StatelessWidget {
  const GradientText({super.key, required this.text, this.style});

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    LinearGradient linear = const LinearGradient(
      colors: [
        AppColor.kGradientColor,
        AppColor.kPrimaryColor,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
    return ShaderMask(
      shaderCallback: (Rect rect) {
        return linear.createShader(rect);
      },
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
