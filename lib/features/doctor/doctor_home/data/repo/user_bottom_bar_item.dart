import 'package:flutter/material.dart';
 
import '../../../../../core/language/lang_keys.dart';
import '../../../doctor_home_page/presentation/views/doctor_home_page.dart';
import '../../../doctor_settings_page/presentation/views/doctor_settings_page.dart';
import '../../../patient_list_screen/presentation/views/patient_list_screen.dart';

class UserBottomNavigation {
  static List<Widget> itemsBody() {
    return [
      const DoctorHomePage(),
      const PatientListScreen(),
      const DoctorSettingsPage(),
    ];
  }

  static List<String> titles = [
    LangKeys.home,
    LangKeys.patients,
    LangKeys.settings,
  ];
}
