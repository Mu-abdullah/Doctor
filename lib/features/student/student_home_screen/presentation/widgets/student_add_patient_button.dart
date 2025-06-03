import 'package:doctor/core/style/widgets/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/style/color/app_color.dart';
import '../../../student_new_patient/presentation/views/student_new_patient.dart';

class StudentAddPatientButton extends StatelessWidget {
  const StudentAddPatientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.green,
      onPressed: () {
        customShowBottomSheet(
          context: context,
          widget: StudentNewPatient(),
          title: LangKeys.registerNewPatient,
        );
      },
      child: const Icon(
        HugeIcons.strokeRoundedUserAdd01,
        color: AppColors.white,
      ),
    );
  }
}
