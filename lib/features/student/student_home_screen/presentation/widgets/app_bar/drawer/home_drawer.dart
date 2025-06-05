import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../../../core/language/lang_keys.dart';
import '../../../../../../../core/style/statics/app_statics.dart';
import '../../../../../../../core/style/widgets/app_space.dart';
import '../../../../../../../core/style/widgets/app_text.dart';
import 'home_drawer_button_list.dart';

class CustomHomeDrawer extends StatelessWidget {
  const CustomHomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding:AppPadding.smallPadding,
        child: Column(
          children: [
            AppSpace(space: 30),
            Row(
              children: [
                Expanded(child: AppText(LangKeys.appName, isTitle: true)),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(HugeIcons.strokeRoundedCancelSquare),
                ),
              ],
            ),
            DrawerButtonList(),
          ],
        ),
      ),
    );
  }
}
