import 'package:doctor/core/extextions/extentions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/style/color/app_color.dart';
import '../../../../../core/style/statics/image_test.dart';
import '../../../../../core/style/widgets/app_text.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            "Dr. Emily Carter",
            isTitle: true,
            isBold: true,
            translate: false,
            color: AppColors.white,
          ),
          AppText("Cardiologist", translate: false, color: AppColors.white),
          AppText("01282146020", translate: false, color: AppColors.white),
          AppText(
            LangKeys.about,
            isTitle: true,
            isBold: true,
            color: AppColors.white,
          ),
          AppText(
            AppTest.doctorBreif,
            translate: false,
            maxLines: 20,
            color: AppColors.white,
          ),
          AppText(
            "More than 7 years of experience",
            translate: false,

            isBold: true,
            color: AppColors.white,
          ),

          Row(
            children: [
              Expanded(
                child: AppText(
                  "+2003 ${context.translate(LangKeys.patient)}",
                  translate: false,
                  color: AppColors.white,
                  isBold: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
