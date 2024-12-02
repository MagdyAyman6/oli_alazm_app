import 'package:flutter/material.dart';
import 'package:oli_alazm_app/core/utils/app_color.dart';
import 'package:oli_alazm_app/core/utils/styles.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CircularSlider extends StatefulWidget {
  const CircularSlider({super.key});

  @override
  State<CircularSlider> createState() => _CircularSliderState();
}

class _CircularSliderState extends State<CircularSlider> {
  double _value = 50;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SleekCircularSlider(
        appearance: CircularSliderAppearance(
            startAngle: 180,
            angleRange: 180,
            size: 160,
            customWidths: CustomSliderWidths(
              shadowWidth: 10,
              progressBarWidth: 12,
              handlerSize: 10,
              trackWidth: 10,
            ),
            customColors: CustomSliderColors(
              dotColor: AppColor.kPrimaryColor,
              trackColor: Colors.white,
              progressBarColor: AppColor.kGradientColor,
            )),
        initialValue: _value,
        min: 0,
        max: 100,
        onChange: (double value) {
          setState(() {
            _value = value;
          });
        },
        innerWidget: (value) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              Text(
                "الفجر",
                style: Styles.textStyle16.copyWith(
                    color: AppColor.kPrimaryColor, fontWeight: FontWeight.w600),
              ),
              Text(
                "04:39 ص",
                style:
                    Styles.textStyle14.copyWith(color: AppColor.kGradientColor),
              ),
              Text(
                "04:11:42",
                style: Styles.textStyle14.copyWith(
                  color: AppColor.kPrimaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
