import 'package:doctor/core/style/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../refactor/student_home_screen_body.dart';
import '../widgets/app_bar/student_home_app_bar.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StudentHomeAppBar(),
      body: StudentHomeScreenBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.green,
        onPressed: () {},
        child: const Icon(
          HugeIcons.strokeRoundedUserAdd01,
          color: AppColors.white,
        ),
      ),
    );
  }
}
