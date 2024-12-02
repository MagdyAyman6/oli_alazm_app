import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class MyHijriDate extends StatefulWidget {
  const MyHijriDate({super.key});

  @override
  MyHijriDateState createState() => MyHijriDateState();
}

class MyHijriDateState extends State<MyHijriDate> {
  late HijriCalendar hijriDate;
  late String gregorianDate;

  @override
  void initState() {
    super.initState();
    hijriDate = HijriCalendar.now();

    gregorianDate = DateFormat(
      "EEEE, d MMMM",
    ).format(DateTime.now()); // Format Gregorian date
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          gregorianDate,
          style: Styles.textStyle16.copyWith(
            color: AppColor.kWhiteColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          '${hijriDate.hDay} ${_getHijriMonthName(hijriDate.hMonth)}/${hijriDate.hYear}هجري',
          style: Styles.textStyle16.copyWith(
            color: AppColor.kWhiteColor,
            fontWeight: FontWeight.w400,
            // overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  String _getHijriMonthName(int month) {
    const hijriMonths = [
      'محرم',
      'صفر',
      'ربيع الأول',
      'ربيع الآخر',
      'جمادى الأول',
      'جمادى الآخر',
      'رجب',
      'شعبان',
      'رمضان',
      'شوّال',
      'ذو القعدة',
      'ذو الحجة'
    ];
    return hijriMonths[month - 1]; // Month is 1-based, so subtract 1
  }
}
