import 'package:flutter/material.dart';

import '../../../../../core/style/color/app_color.dart';
import '../../../doctor_home_page/presentation/views/doctor_home_page.dart';
import '../../../doctor_profile_page/presentation/views/doctor_profile_page.dart';
import '../../../doctor_settings_page/presentation/views/doctor_settings_page.dart';
import '../widgets/bottom_bar/custom_bottom_navigation_bar.dart';

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

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      // appBar: CustomAppBar(title: titles[currentIndex], isBack: false),
      body: SafeArea(child: pages[currentIndex]),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabTapped,
      ),
    );
  }
}
