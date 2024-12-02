import 'package:flutter/material.dart';
import 'package:oli_alazm_app/core/utils/app_color.dart';
import 'package:oli_alazm_app/core/utils/assets.dart';
import 'package:oli_alazm_app/core/utils/styles.dart';
import 'package:oli_alazm_app/core/widgets/custom_button.dart';

class QuranTrackingCard extends StatelessWidget {
  const QuranTrackingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10, bottom: 19, top: 15, left: 15),
      margin: const EdgeInsets.symmetric(horizontal: 26, vertical: 12),
      height: 190,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: const AssetImage(AssetsData.quranCardCover),
          fit: BoxFit.fill,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.end,
                " متابعة القرآن من حيث توقفت \n توقفت عند سورة النساء\n صفحة 79 ",
                style: Styles.textStyle16.copyWith(color: Colors.white),
              ),
              Image.asset(
                AssetsData.quranLogoCard,
                width: 120,
                height: 120,
                fit: BoxFit.fill,
              ),
            ],
          ),
          const SizedBox(
            height: 35,
            width: 150,
            child: CustomButton(
              color: AppColor.kPrimaryColor,
              text: "متابعة الحفظ",
              style: Styles.textStyle16,
            ),
          ),
        ],
      ),
    );
  }
}
