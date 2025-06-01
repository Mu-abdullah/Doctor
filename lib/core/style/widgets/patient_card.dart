import 'package:doctor/core/extextions/extentions.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../language/lang_keys.dart';
import '../../services/status/gender_status.dart';
import 'app_text.dart';

class PatientCard extends StatelessWidget {
  const PatientCard({super.key, this.name, this.gender, this.age});
  final String? name;
  final String? gender;
  final String? age;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: Colors.blueAccent.withValues(alpha: 0.2),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                gender == GenderStatus.getGender(Gender.female)
                    ? HugeIcons.strokeRoundedFemaleSymbol
                    : HugeIcons.strokeRoundedMaleSymbol,
              ),
            ),
          ),
          Expanded(
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  name ?? context.translate(LangKeys.unavailable),
                  translate: false,
                  isBold: true,
                ),
                Row(
                  children: [
                    AppText(
                      translate: false,
                      "${gender ?? GenderStatus.getGender(Gender.male)}, ",
                    ),
                    AppText(
                      translate: false,
                      age == null
                          ? "$age ${context.translate(LangKeys.unavailable)}"
                          : "$age ${context.translate(LangKeys.yearsOld)}",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
