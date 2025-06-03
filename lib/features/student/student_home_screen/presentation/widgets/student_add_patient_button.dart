import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../core/style/color/app_color.dart';

class StudentAddPatientButton extends StatelessWidget {
  const StudentAddPatientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.green,
      onPressed: () {},
      child: const Icon(
        HugeIcons.strokeRoundedUserAdd01,
        color: AppColors.white,
      ),
    );
  }
}
