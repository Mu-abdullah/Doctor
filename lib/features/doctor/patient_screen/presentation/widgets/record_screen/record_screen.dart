import 'package:doctor/core/extextions/extentions.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../../core/language/lang_keys.dart';
import '../../../../../../core/style/color/app_color.dart';
import '../../../../../../core/style/statics/app_statics.dart';
import '../../../../../../core/style/widgets/app_button.dart';
import '../../../../../../core/style/widgets/app_space.dart';
import '../../../../../../core/style/widgets/app_text.dart';

class RecordScreen extends StatelessWidget {
  const RecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height(percent: 0.6),
      decoration: BoxDecoration(
        borderRadius: AppBorderRadius.mediumRadius,
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 24,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: AppText(
                  LangKeys.diagnosis,
                  isTitle: true,
                  isBold: true,
                  textAlign: TextAlign.center,
                ),
              ),
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  HugeIcons.strokeRoundedCancelSquare,
                  color: AppColors.red,
                ),
              ),
            ],
          ),
          AppSpace(),
          AppText(LangKeys.startRecord, maxLines: 10),
          AppButton(
            text: LangKeys.recordDiagnosis,
            backGroungColor: AppColors.blueAccent,
            isUpperCase: false,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
