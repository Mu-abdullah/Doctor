import 'package:doctor/core/extextions/extentions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/style/color/app_color.dart';
import '../../../../../core/style/statics/app_statics.dart';
import '../../../../../core/style/widgets/app_text.dart';

class AdminHomeCustomButton extends StatelessWidget {
  const AdminHomeCustomButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.color = AppColors.blueAccent,
    this.textColor = AppColors.black,
  });
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    bool isArabic = context.langCode == 'ar';
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: AppBorderRadius.mediumRadius,
          gradient: LinearGradient(colors: [AppColors.white, color]),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Row(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(title, fontSize: 24, isBold: true, color: textColor),
                  Icon(icon, color: textColor),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: isArabic ? null : -20,
              left: isArabic ? -20 : null,
              child: Icon(
                icon,
                color: AppColors.white.withValues(alpha: 0.2),
                size: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
