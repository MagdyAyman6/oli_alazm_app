import 'package:flutter/material.dart';
import 'package:oli_alazm_app/core/utils/styles.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/custom_icon_notification.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/my_hijri_date.dart';
import '../../../../../core/utils/assets.dart';
import 'circular_slider.dart';

class SliderContainer extends StatelessWidget {
  const SliderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280,
      decoration: const BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.srgbToLinearGamma(),
          image: AssetImage(AssetsData.homeImg,),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const CustomIconNotification(),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 30,right: 25),
                  child: MyHijriDate(),
                ),
                CircularSlider(),
              ],
            ),
            Text(
              "الزقازيق , السلام",
              style: Styles.textStyle16
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
