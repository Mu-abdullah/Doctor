import 'package:flutter/material.dart';

import '../refactor/student_home_screen_body.dart';
import '../widgets/app_bar/student_home_app_bar.dart';
import '../widgets/student_add_patient_button.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StudentHomeAppBar(),
      body: StudentHomeScreenBody(),
      floatingActionButton: StudentAddPatientButton(),
    );
  }
}

