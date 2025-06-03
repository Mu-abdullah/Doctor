import 'package:flutter/material.dart';

import '../../../../../doctor/doctor_settings_page/presentation/views/doctor_settings_page.dart';

class StudentHomeDrawer extends StatelessWidget {
  const StudentHomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorSettingsPage(isStudent: true);
  }
}
