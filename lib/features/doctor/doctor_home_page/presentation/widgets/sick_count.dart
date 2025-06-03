import 'package:doctor/core/extextions/extentions.dart';

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/routes/routes_name.dart';
import '../../../../../core/style/color/app_color.dart';
import '../../../../../core/style/widgets/custom_bottom_sheet.dart';
import '../../../new_patient/presentation/views/new_patient.dart';
import 'home_count_card.dart';

class SickCount extends StatelessWidget {
  const SickCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        spacing: 16,
        children: [
          HomeCountCard(
            onTap: () {
              context.pushNamed(RoutesNames.patientScreen);
            },
            cardIcon: HugeIcons.strokeRoundedNext,
            cardTitle: LangKeys.nextVisit,
            cardCount: "",
            isHighlighted: true,
            color: AppColors.blueAccent,
            textColor: AppColors.white,
          ),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeCountCard(
                onTap: () {
                  context.pushNamed(RoutesNames.visitsScreen);
                },
                cardIcon: HugeIcons.strokeRoundedClock04,
                cardTitle: LangKeys.waiting,
                cardCount: "10",
                isHighlighted: true,
                color: AppColors.white,
                textColor: AppColors.black,
                width: context.width(percent: 0.46),
              ),
              HomeCountCard(
                onTap: () {
                  context.pushNamed(RoutesNames.visitsScreen);
                },
                cardIcon: HugeIcons.strokeRoundedClock04,
                cardTitle: LangKeys.completed,
                cardCount: "20",
                isHighlighted: true,
                color: AppColors.black,
                textColor: AppColors.white,
                width: context.width(percent: 0.46),
              ),
            ],
          ),
          HomeCountCard(
            onTap: () {
              customShowBottomSheet(
                context: context,
                widget: NewPatient(),
                title: LangKeys.registerNewPatient,
              );
            },
            cardIcon: HugeIcons.strokeRoundedAddTeam,
            cardTitle: LangKeys.registerNewPatient,
            cardCount: "",
            isHighlighted: true,
            color: AppColors.green,
            textColor: AppColors.black,
          ),
        ],
      ),
    );
  }
}
