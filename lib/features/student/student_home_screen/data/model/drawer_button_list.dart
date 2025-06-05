import 'package:doctor/core/extextions/extentions.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/routes/routes_name.dart';
import 'drawer_button_model.dart';

class DrawerButtonListItems {
  static List<DrawerButtonModel> drawerItems(BuildContext context) => [
    DrawerButtonModel(
      title: LangKeys.changeLanguage,
      icon: HugeIcons.strokeRoundedLanguageSquare,
      onTap: () {
        context.pop();
        context.pushNamed(RoutesNames.language);
      },
    ),
    DrawerButtonModel(
      title: LangKeys.upgrade,
      icon: HugeIcons.strokeRoundedSquareArrowUp01,
      onTap: () {
        context.pop();
      },
    ),
  ];
}
