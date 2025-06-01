import 'package:doctor/core/extextions/extentions.dart';

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/routes/routes_name.dart';
import '../../../../../core/style/color/app_color.dart';
import 'home_count_card.dart';

class SickCount extends StatelessWidget {
  const SickCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          spacing: 10,
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
              width: context.width(percent: .3),
            ),
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
              width: context.width(percent: .3),
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
              width: context.width(percent: .3),
            ),
          ],
        ),
      ),
    );
  }
}
