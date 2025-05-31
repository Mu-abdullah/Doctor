import 'package:flutter/material.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/style/widgets/app_text.dart';

class DoctorSettingSectionTitle extends StatelessWidget {
  const DoctorSettingSectionTitle(this.title, {super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppText(LangKeys.account, isBold: true, fontSize: 18);
  }
}
