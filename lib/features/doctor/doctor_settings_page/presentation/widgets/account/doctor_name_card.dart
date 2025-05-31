import 'package:flutter/material.dart';

import '../../../../../../core/language/lang_keys.dart';
import '../../../../../../core/style/widgets/app_text.dart';
import 'doctor_setting_image.dart';

class DoctorNameCard extends StatelessWidget {
  const DoctorNameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        DoctorSettingImage(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(LangKeys.profile, isTitle: true, isBold: true),
              AppText("Dr. Emily Carter", translate: false),
            ],
          ),
        ),
      ],
    );
  }
}
