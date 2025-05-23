import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/style/widgets/app_button.dart';
import '../../../../../core/style/widgets/app_text_form_felid.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
      child: Row(
        spacing: 10,
        children: [
          Expanded(
            child: AppTextFormField(
              controller: TextEditingController(),
              type: TextInputType.text,
              hint: LangKeys.searchHint,
              label: LangKeys.search,
              prefix: Icon(HugeIcons.strokeRoundedSearch01, color: Colors.grey),
              validate: (c) {
                return null;
              },
            ),
          ),
          AppButton(
            onTap: () {},
            isCircle: true,
            backGroungColor: Colors.black.withValues(alpha: 0.1),
            icon: HugeIcons.strokeRoundedSearch01,
            iconColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
