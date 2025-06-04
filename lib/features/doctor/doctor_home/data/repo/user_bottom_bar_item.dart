import 'package:flutter/material.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../doctor_home_page/presentation/views/doctor_home_page.dart';
import '../../../doctor_settings_page/presentation/views/doctor_settings_page.dart';
import '../../../messenger/presentation/views/messenger_screen.dart';

class UserBottomNavigation {
  static List<Widget> itemsBody = [
    const DoctorHomePage(),
    const MessengerScreen(),
    const DoctorSettingsPage(),
  ];

  static List<String> titles = [
    LangKeys.home,
    LangKeys.messenger,
    LangKeys.settings,
  ];
}
