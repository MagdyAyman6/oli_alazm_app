import 'package:flutter/material.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/category_item_list_view.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/daily_card.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/easy_stepper.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/muhaffidhon_section_builder.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/quran_tracking_card.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/slider_container.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SliderContainer(),
            SizedBox(
              height: 8,
            ),
            EasyStepperWidget(),
            SizedBox(
              height: 5,
            ),
            CategoryItemListView(),
            QuranTrackingCard(),
            DailyCard(),
            MuhaffidhonSectionBuilder(),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
