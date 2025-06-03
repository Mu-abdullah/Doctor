import 'package:flutter/material.dart';

import '../../../../../../core/language/lang_keys.dart';
import '../../../../../../core/style/widgets/app_space.dart';
import '../../../../../../core/style/widgets/app_text.dart';
import '../../../../../doctor/doctor_settings_page/presentation/views/doctor_settings_page.dart';

class StudentHomeDrawer extends StatelessWidget {
  const StudentHomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppSpace(),
        Row(
          children: [
            Expanded(
              child: AppText(
                LangKeys.settings,
                isTitle: true,
                isBold: true,
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
            ),
          ],
        ),
        DoctorSettingsPage(isStudent: true),
        AppSpace(),
      ],
    );
  }
}
