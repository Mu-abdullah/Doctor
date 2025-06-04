import 'package:flutter/material.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/style/color/app_color.dart';
import '../../../../../core/style/widgets/custom_app_bar.dart';
import '../../../doctor_home_page/presentation/views/doctor_home_page.dart';
import '../../../doctor_settings_page/presentation/views/doctor_settings_page.dart';
import '../../../patient_list_screen/presentation/views/patient_list_screen.dart';
import '../widgets/bottom_bar/custom_bottom_navigation_bar.dart';

class DoctorHomeScreen extends StatefulWidget {
  const DoctorHomeScreen({super.key, this.isAdmin = false});
  final bool isAdmin;
  @override
  State<DoctorHomeScreen> createState() => _DoctorHomeScreenState();
}

class _DoctorHomeScreenState extends State<DoctorHomeScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const DoctorHomePage(),
    const PatientListScreen(),
    const DoctorSettingsPage(),
  ];
  final List<String> titles = [
    LangKeys.home,
    LangKeys.patients,
    LangKeys.settings,
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: AppColors.white,
        elevation: 5,
        title: titles[currentIndex],
        isBack: widget.isAdmin,
      ),
      body: SafeArea(child: pages[currentIndex]),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabTapped,
      ),
    );
  }
}
