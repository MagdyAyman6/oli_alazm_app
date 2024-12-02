import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oli_alazm_app/core/utils/app_color.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar(
      {super.key, this.onTab, required this.selectedIndex});

  final int selectedIndex;
  final void Function(int)? onTab;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 55,
      index: selectedIndex,
      items: const [
        Icon(
          Icons.home,
          size: 25,
          color: Colors.white,
        ),
        FaIcon(
          FontAwesomeIcons.mosque,
          size: 25,
          color: Colors.white,
        ),
        FaIcon(
          FontAwesomeIcons.bookOpen,
          size: 25,
          color: Colors.white,
        ),
        FaIcon(
          FontAwesomeIcons.handsBound,
          size: 25,
          color: Colors.white,
        ),
        Icon(
          Icons.settings_outlined,
          size: 25,
          color: Colors.white,
        ),
      ],
      buttonBackgroundColor: AppColor.kGradientColor,
      backgroundColor: Colors.transparent,
      color: AppColor.kGradientColor,
      onTap: onTab,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(microseconds: 300),
      letIndexChange: (index) => true,
    );
  }
}
