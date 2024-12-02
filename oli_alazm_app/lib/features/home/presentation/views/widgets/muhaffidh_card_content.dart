import 'package:flutter/material.dart';
import 'package:oli_alazm_app/core/utils/app_color.dart';
import 'package:oli_alazm_app/core/utils/styles.dart';

class MuhaffidhCardContent extends StatelessWidget {
  const MuhaffidhCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColor.kWhiteColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      height: 92,
      width: 165,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 4,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "مجدى أيمن",
              style: Styles.textStyle16.copyWith(
                color: AppColor.kNameColor,
              ),
            ),
            Text(
              "مُحفظ",
              style: Styles.textStyle12.copyWith(
                color: AppColor.kName2Color,
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "4.6",
                        style: Styles.textStyle14
                            .copyWith(color: AppColor.kRateNumber),
                      ),
                      const Icon(
                        Icons.star_rate_rounded,
                        size: 12,
                        color: AppColor.kRateIcon,
                      )
                    ],
                  ),
                  Text(
                    "المراجعات",
                    style: Styles.textStyle14
                        .copyWith(color: AppColor.kName1Color),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
