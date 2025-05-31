import 'package:flutter/material.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../doctor_home_page/presentation/views/doctor_home_page.dart';
import '../../../doctor_profile_page/presentation/views/doctor_profile_page.dart';
import '../../../doctor_settings_page/presentation/views/doctor_settings_page.dart';
import '../widgets/bottom_bar/custom_bottom_navigation_bar.dart';
import '../widgets/home_title.dart';

class DoctorHomeScreen extends StatefulWidget {
  const DoctorHomeScreen({super.key});

  @override
  State<DoctorHomeScreen> createState() => _DoctorHomeScreenState();
}

class _DoctorHomeScreenState extends State<DoctorHomeScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const DoctorHomePage(),
    const DoctorProfilePage(),
    const DoctorSettingsPage(),
  ];
  final List<Widget> appBar = [
    const HomeTitle(title: LangKeys.settings),
    const HomeTitle(title: LangKeys.settings),
    const HomeTitle(title: LangKeys.settings),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(title: titles[currentIndex], isBack: false),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            currentIndex == 0 ? SizedBox() : appBar[currentIndex],
            pages[currentIndex],
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabTapped,
      ),
    );
  }
}
