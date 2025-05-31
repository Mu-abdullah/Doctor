import 'package:flutter/material.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/style/color/app_color.dart';
import '../../../../../core/style/widgets/app_button.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onTap: () {},
      text: LangKeys.logout,
      txtColor: AppColors.black,
      fontWeight: FontWeight.w900,
      isUpperCase: false,
      fontSize: 18,
      backGroungColor: AppColors.blueAccent.withValues(alpha: 0.2),
    );
  }
}
