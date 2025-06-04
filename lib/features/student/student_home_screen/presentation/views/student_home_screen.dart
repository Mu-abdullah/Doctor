import 'package:flutter/material.dart';

import '../refactor/student_home_screen_body.dart';
import '../widgets/app_bar/drawer/home_drawer.dart';
import '../widgets/app_bar/student_home_app_bar.dart';
import '../widgets/student_add_patient_button.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key, this.isAdmin = false});
  final bool isAdmin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StudentHomeAppBar(isAdmin: isAdmin),
      body: StudentHomeScreenBody(),
      drawer: CustomHomeDrawer(),
      floatingActionButton: StudentAddPatientButton(),
    );
  }
}
