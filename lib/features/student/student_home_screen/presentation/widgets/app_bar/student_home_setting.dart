import 'package:flutter/material.dart';

import '../../../../../../core/style/widgets/app_space.dart';
import '../../../../../doctor/doctor_settings_page/presentation/views/doctor_settings_page.dart';

class StudentHomeSetting extends StatelessWidget {
  const StudentHomeSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [DoctorSettingsPage(isStudent: true), AppSpace()],
    );
  }
}
