import 'package:doctor/core/extextions/extentions.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../core/language/lang_keys.dart';
import '../../../../core/routes/routes_name.dart';
import '../../../../core/style/color/app_color.dart';
import '../../../../core/style/statics/app_statics.dart';
import '../../../../core/style/widgets/custom_app_bar.dart';
import '../../../../core/style/widgets/custom_bottom_sheet.dart';
import '../../../doctor/doctor_home_page/presentation/widgets/home_count_card.dart';
import '../../../doctor/new_patient/presentation/views/new_patient.dart';

class AssistantScreen extends StatelessWidget {
  const AssistantScreen({super.key, required this.isAdmin});
  final bool isAdmin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: LangKeys.assistant,
        isBack: isAdmin,
        actions: [
          IconButton(
            onPressed: () => context.pushNamed(RoutesNames.language),
            icon: Icon(
              HugeIcons.strokeRoundedLanguageSquare,
              color: AppColors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: AppPadding.symmetricPadding(),
        child: Column(
          spacing: 16,
          children: [
            _buildCountCard(
              context: context,
              onTap: () => context.pushNamed(RoutesNames.visitsScreen),
              icon: HugeIcons.strokeRoundedClock04,
              title: LangKeys.waiting,
              count: "20",
              color: AppColors.yellow,
              textColor: AppColors.black,
            ),
            _buildCountCard(
              context: context,
              onTap: () => context.pushNamed(RoutesNames.visitsScreen),
              icon: HugeIcons.strokeRoundedCheckmarkCircle01,
              title: LangKeys.completed,
              count: "5",
              color: AppColors.black,
              textColor: AppColors.white,
            ),
            _buildCountCard(
              context: context,
              onTap:
                  () => customShowBottomSheet(
                    context: context,
                    widget: const NewPatient(),
                    title: LangKeys.registerNewPatient,
                  ),
              icon: HugeIcons.strokeRoundedAddTeam,
              title: LangKeys.registerNewPatient,
              count: "",
              color: AppColors.green,
              textColor: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCountCard({
    required BuildContext context,
    required VoidCallback onTap,
    required IconData icon,
    required String title,
    required String count,
    required Color color,
    required Color textColor,
  }) {
    return HomeCountCard(
      onTap: onTap,
      cardIcon: icon,
      cardTitle: title,
      cardCount: count,
      isHighlighted: true,
      color: color,
      textColor: textColor,
    );
  }
}
