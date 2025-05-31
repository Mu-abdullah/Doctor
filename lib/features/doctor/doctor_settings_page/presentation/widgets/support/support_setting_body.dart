import 'package:flutter/material.dart';

import '../../../../../../core/language/lang_keys.dart';
import '../doctor_setting_section_title.dart';
import 'support_cards.dart';

class SupportSettingBody extends StatelessWidget {
  const SupportSettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [DoctorSettingSectionTitle(LangKeys.support), SupportCards()],
    );
  }
}
