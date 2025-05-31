import 'package:doctor/core/extextions/extentions.dart';
import 'package:flutter/material.dart';

class FontsHelper {
  static const String monsterratFontFamily = 'monsterrat';
  static const String fontFamily = 'reqaa';

  static String fontLangFamily(BuildContext context) {
    if (context.langCode == 'ar') {
      return fontFamily;
    } else {
      return fontFamily;
    }
  }
}
