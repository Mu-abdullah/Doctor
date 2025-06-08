import 'package:doctor/core/extextions/extentions.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/functions/timestamp_to_time.dart';
import '../../../../../../core/language/lang_keys.dart';
import '../../../../../../core/style/statics/app_statics.dart';
import '../../../../../../core/style/widgets/app_text.dart';

class DoctorName extends StatelessWidget {
  const DoctorName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: AppPadding.symmetricPadding(),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(LangKeys.welcome),
                  AppText(
                    "Doctor Name",
                    translate: false,
                    isTitle: true,
                    isBold: true,
                  ),
                ],
              ),
            ),
            AppText(
              TimeRefactor(
                DateTime.now().toString(),
              ).timeString(lang: context.langCode),
              maxLines: 2,
              translate: false,
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
    );
  }
}
