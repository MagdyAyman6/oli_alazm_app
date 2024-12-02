import 'package:flutter/material.dart';
import 'package:oli_alazm_app/core/utils/assets.dart';

class MuhaffidhImageBuilder extends StatelessWidget {
  const MuhaffidhImageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsData.muhaffidhCardImg,
      height: 100,
      width: 100,
      fit: BoxFit.fill,
    );
  }
}
