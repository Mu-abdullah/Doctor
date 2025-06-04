import 'package:flutter/material.dart';

import '../../../../../core/style/color/app_color.dart';
import '../../../../../core/style/statics/app_statics.dart';
import '../../../../../core/style/widgets/app_text.dart';

class AdminSections extends StatelessWidget {
  const AdminSections({super.key, required this.title, required this.child});
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppBorderRadius.mediumRadius,
        color: AppColors.white,
      ),

      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppText(
            title,
            isBold: true,
            isTitle: true,
            fontSize: 20,
            textAlign: TextAlign.start,
          ),
          child,
        ],
      ),
    );
  }
}
