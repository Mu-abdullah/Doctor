import 'package:doctor/core/extextions/extentions.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/style/statics/app_statics.dart';
import '../../../../../core/style/widgets/custom_app_bar.dart';
import '../../../admin_home/presentation/widgets/admin_section.dart';
import '../widgets/new_client_text_form_felid.dart';

class NewClientScreen extends StatelessWidget {
  const NewClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: LangKeys.newClient),
      body: Padding(
        padding: AppPadding.symmetricPadding(),
        child: Column(
          children: [
            AdminSections(
              title: LangKeys.personalInformation,
              child: Column(
                spacing: 16,
                children: [
                  NewClientTextFormFelid(
                    controller: TextEditingController(),
                    type: TextInputType.text,
                    label: LangKeys.name,
                    icon: HugeIcons.strokeRoundedUser,
                  ),
                  NewClientTextFormFelid(
                    controller: TextEditingController(),
                    type: TextInputType.multiline,
                    label: LangKeys.aboutDr,
                    icon: HugeIcons.strokeRoundedStudentCard,
                  ),
                  NewClientTextFormFelid(
                    controller: TextEditingController(),
                    type: TextInputType.number,
                    label: LangKeys.phone,
                    maxLength: 11,
                    maxLines: 1,
                    icon: HugeIcons.strokeRoundedSmartPhone01,
                    validate: (c) {
                      if (c!.isEmpty) {
                        return context.translate(LangKeys.requiredValue);
                      }
                      if (c.length < 11) {
                        return context.translate(LangKeys.phoneError);
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
