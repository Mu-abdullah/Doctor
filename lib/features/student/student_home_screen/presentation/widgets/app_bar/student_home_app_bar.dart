import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../../core/language/lang_keys.dart';
import '../../../../../../core/style/widgets/custom_app_bar.dart';
import '../../../../../../core/style/widgets/custom_bottom_sheet.dart';
import 'student_home_setting.dart';

class StudentHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StudentHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: LangKeys.home,
      isBack: false,
      hasDrawer: true,
      actions: [
        IconButton(
          icon: const Icon(HugeIcons.strokeRoundedSettings01),
          onPressed: () {
            customShowBottomSheet(
              context: context,
              useSafeArea: false,
              title: LangKeys.settings,
              widget: StudentHomeSetting(),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
