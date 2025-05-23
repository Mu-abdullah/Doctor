import 'package:doctor/core/extextions/extentions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/routes/routes_name.dart';
import '../../../../../core/style/widgets/app_button.dart';

class DoctorSettingsPage extends StatelessWidget {
  const DoctorSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppButton(
        onTap: () {
          context.pushNamed(RoutesNames.language);
        },
        text: LangKeys.changeLanguage,
      ),
    );
  }
}
