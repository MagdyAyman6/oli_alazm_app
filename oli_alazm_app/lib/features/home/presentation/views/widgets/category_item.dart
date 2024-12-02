import 'package:flutter/material.dart';
import 'package:oli_alazm_app/core/utils/app_color.dart';
import 'package:oli_alazm_app/core/utils/styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key, required this.image, required this.title, this.onTap});

  final void Function()? onTap;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 26),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              image,
              width: 32,
              height: 32,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: Styles.textStyle16.copyWith(
                color: AppColor.kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
