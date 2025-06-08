import 'package:doctor/core/extextions/extentions.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../../core/language/lang_keys.dart';
import '../../../../../../core/routes/routes_name.dart';
import '../../../../../../core/style/color/app_color.dart';
import '../../../../../../core/style/custom_widgets/custom_snack_bar.dart';
import '../admin_home_custom_button.dart';
import '../admin_section.dart';

class ModeSection extends StatelessWidget {
  const ModeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminSections(
      title: LangKeys.modes,
      icon: HugeIcons.strokeRoundedChangeScreenMode,
      child: Column(
        spacing: 16,
        children: [
          AdminHomeCustomButton(
            title: LangKeys.doctor,
            icon: HugeIcons.strokeRoundedDoctor01,
            onTap:
                () => context.pushNamed(
                  RoutesNames.doctorHome,
                  arguments: {'isAdmin': true},
                ),
          ),
          AdminHomeCustomButton(
            title: LangKeys.student,
            icon: HugeIcons.strokeRoundedStudent,
            color: AppColors.green,
            onTap:
                () => context.pushNamed(
                  RoutesNames.studentHomeScreen,
                  arguments: {'isAdmin': true},
                ),
          ),
          AdminHomeCustomButton(
            title: LangKeys.patient,
            icon: HugeIcons.strokeRoundedPatient,
            color: AppColors.yellow,
            onTap: () {
              CustomSnackbar.showTopSnackBar(
                context,
                message: LangKeys.comingSoon,
                backgroundColor: AppColors.yellow,
                top: false,
              );
            },
          ),
          AdminHomeCustomButton(
            title: LangKeys.assistant,
            icon: HugeIcons.strokeRoundedDoctor02,
            color: AppColors.black,
            textColor: AppColors.white,
            onTap: () {
              context.pushNamed(
                RoutesNames.assistantScreen,
                arguments: {'isAdmin': true},
              );
            },
          ),
        ],
      ),
    );
  }
}
