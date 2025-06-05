import 'package:doctor/core/extextions/extentions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/style/widgets/app_text_form_felid.dart';

class NewClientTextFormFelid extends StatelessWidget {
  const NewClientTextFormFelid({
    super.key,
    required this.controller,
    required this.label,
    this.type = TextInputType.text,
    this.icon,
    this.validate,
    this.onTap,
    this.maxLines,
    this.maxLength,
    this.isPassword = false,
  });
  final TextEditingController controller;
  final String label;
  final FormFieldValidator<String>? validate;
  final TextInputType type;
  final IconData? icon;
  final void Function()? onTap;
  final int? maxLines;
  final int? maxLength;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: controller,
      prefix: icon == null ? null : Icon(icon),
      type: type,
      label: label,
      hint: label,
      isPassword: isPassword,
      maxLines: maxLines,
      maxLength: maxLength,
      validate:
          validate ??
          (c) {
            if (c!.isEmpty) {
              return context.translate(LangKeys.requiredValue);
            }
            return null;
          },

      onTap: onTap,
    );
  }
}
