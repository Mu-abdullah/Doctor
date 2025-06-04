import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../../core/language/lang_keys.dart';
import '../../../../../../core/style/color/app_color.dart';
import '../admin_home_custom_button.dart';
import '../admin_section.dart';

class NewClientSection extends StatelessWidget {
  const NewClientSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminSections(
      title: LangKeys.client,
      child: Column(
        children: [
          AdminHomeCustomButton(
            color: AppColors.black,
            textColor: AppColors.white,
            title: LangKeys.newClient,
            icon: HugeIcons.strokeRoundedNewReleases,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
