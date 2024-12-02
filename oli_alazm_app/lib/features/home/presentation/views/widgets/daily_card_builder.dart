import 'package:flutter/material.dart';
import 'package:oli_alazm_app/core/utils/app_color.dart';
import 'package:oli_alazm_app/core/utils/assets.dart';
import 'package:oli_alazm_app/core/utils/styles.dart';

class DailyCardBuilder extends StatelessWidget {
  const DailyCardBuilder({super.key, required this.title, required this.text});

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 13),
      width: double.infinity,
      height: 220,
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.bookmark,
                    color: AppColor.kPrimaryColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.share,
                    color: AppColor.kPrimaryColor,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        title,
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        AssetsData.ayahIcon,
                        width: 24,
                        height: 24,
                        color: AppColor.kPrimaryColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              color: AppColor.kPrimaryColor,
              thickness: 0.3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 24),
              child: Text(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                text,
                style:
                    Styles.textStyle16.copyWith(color: AppColor.kBlackColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
