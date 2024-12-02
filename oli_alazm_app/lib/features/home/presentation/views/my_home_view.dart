import 'package:flutter/material.dart';
import 'package:oli_alazm_app/features/home/presentation/views/profile_view.dart';
import 'package:oli_alazm_app/features/home/presentation/views/religious_books_view.dart';
import 'package:oli_alazm_app/features/home/presentation/views/sebha_tab_view.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/my_bottom_navigation_bar.dart';
import 'khotab_view.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  int selectedIndex = 0;
  final List<Widget> pages = const [
    HomeViewBody(),
    KhotabView(),
    ReligiousBooksView(),
    SebhaTabView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: selectedIndex,
        onTab: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: pages[selectedIndex],
    );
  }
}
