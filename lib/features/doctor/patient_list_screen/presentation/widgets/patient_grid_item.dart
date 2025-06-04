import 'package:doctor/core/extextions/extentions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/routes/routes_name.dart';
import '../../../../../core/style/color/app_color.dart';
import '../../../../../core/style/statics/app_statics.dart';
import '../../../../../core/style/widgets/app_text.dart';

class PatientGridItem extends StatelessWidget {
  const PatientGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(RoutesNames.patientScreen);
      },
      child: Card(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: AppBorderRadius.mediumRadius,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 2,
        semanticContainer: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              AppText(
                "Patient Name",
                translate: false,
                isTitle: true,
                isBold: true,
                maxLines: 6,
              ),

              AppText("Age", translate: false),
              AppText("Phone", translate: false),
              AppText("Gender", translate: false),
              AppText("Patient ID", translate: false),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
