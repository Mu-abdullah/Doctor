import 'package:flutter/material.dart';

import '../../../../../../core/language/lang_keys.dart';
import '../doctor_setting_section_title.dart';
import 'doctor_email_password_card.dart';
import 'doctor_name_card.dart';

class AccountSettingBody extends StatelessWidget {
  const AccountSettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        DoctorSettingSectionTitle(LangKeys.account),
        DoctorNameCard(),
        DoctorEmailAndPasswordCard(),
      ],
    );
  }
}
