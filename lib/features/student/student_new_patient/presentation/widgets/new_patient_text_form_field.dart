import 'package:doctor/core/extextions/extentions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/style/widgets/app_text_form_felid.dart';

class NewPatientTextFormField extends StatelessWidget {
  const NewPatientTextFormField({
    super.key,
    required this.controller,
    required this.type,
    required this.hint,
    this.icon,
  });

  final TextEditingController controller;
  final TextInputType type;
  final String hint;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: controller,
      type: type,
      hint: hint,
      label: hint,
      prefix: Icon(icon, color: Colors.grey),
      validate: (c) {
        if (c!.isEmpty) {
          return context.translate(LangKeys.requiredValue);
        }
        return null;
      },
    );
  }
}
