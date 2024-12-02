import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_color.dart';

class EasyStepperWidget extends StatefulWidget {
  const EasyStepperWidget({super.key});

  @override
  State<EasyStepperWidget> createState() => _EasyStepperWidgetState();
}

class _EasyStepperWidgetState extends State<EasyStepperWidget> {
  int activeStep = 0;

  // Track the current step
  final List<String> stepImgs = [
    'assets/images/stepper1.png',
    'assets/images/stepper2.png',
    'assets/images/stepper3.png',
    'assets/images/stepper4.png',
    'assets/images/stepper5.png',
  ];

  // Function to build each step
  EasyStep _buildStep(int index) {
    return EasyStep(
      customTitle: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Center(
          child: Image.asset(
            stepImgs[index],
            height: 25,
            width: 25,
            fit: BoxFit.fill,
          ),
        ),
      ),
      customStep: Container(
        decoration: BoxDecoration(
          color: activeStep >= index ? AppColor.kGradientColor : Colors.white,
          border: Border.all(
            color: AppColor.kGradientColor,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(22),
        ),
        child: const Center(
          child: Icon(
            Icons.check,
            size: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: EasyStepper(
        activeStepBorderColor: AppColor.kGradientColor,
        activeStepIconColor: AppColor.kWhiteColor,
        activeStep: activeStep,
        internalPadding: 0,
        showLoadingAnimation: false,
        activeStepBackgroundColor: AppColor.kGradientColor,
        lineStyle: const LineStyle(
          lineLength: 60,
          lineType: LineType.normal,
          lineThickness: 1.5,
          defaultLineColor: AppColor.kPrimaryColor,
        ),
        stepRadius: 14,
        showStepBorder: false,
        steps: List.generate(
          5, // Number of steps (could be dynamic if needed)
          (index) => _buildStep(index),
        ),
        onStepReached: (index) => setState(() => activeStep = index),
      ),
    );
  }
}
