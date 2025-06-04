import 'package:doctor/core/extextions/extentions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/style/color/app_color.dart';
import '../../../../../core/style/statics/app_statics.dart';
import '../../../../../core/style/widgets/app_text.dart';

class PatientsCount extends StatelessWidget {
  const PatientsCount({super.key, required this.count});
  final int count;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.blueAccent.withValues(alpha: 0.5),
        borderRadius: AppBorderRadius.mediumRadius,
      ),
      padding: const EdgeInsets.all(8),
      child: AppText(
        "$count ${context.translate(LangKeys.patients)}",
        isTitle: true,
        translate: false,
      ),
    );
  }
}
