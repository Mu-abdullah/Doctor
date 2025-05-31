import 'package:flutter/material.dart';

import '../refactor/doctor_settings_page_body.dart';

class DoctorSettingsPage extends StatelessWidget {
  const DoctorSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SingleChildScrollView(child: DoctorSettingsPageBody()),
    );
  }
}
