import 'package:doctor/core/services/status/gender_status.dart';
import 'package:doctor/core/style/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/style/statics/image_test.dart';
import '../../../../../core/style/widgets/app_text_form_felid.dart';
import '../../../../../core/style/widgets/custom_app_bar.dart';

class DoctorSearchScreen extends StatelessWidget {
  const DoctorSearchScreen({super.key, this.searchQuery});
  final String? searchQuery;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: LangKeys.search),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            AppTextFormField(
              controller: TextEditingController(text: searchQuery),
              type: TextInputType.text,
              hint: LangKeys.searchHint,
              label: LangKeys.search,
              prefix: Icon(HugeIcons.strokeRoundedSearch01, color: Colors.grey),
              validate: (c) {
                return null;
              },
              onSubmitted: (v) {},
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
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
                            color: Colors.grey,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(AppImages.logo),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            spacing: 16,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                'Dr. John Doe',
                                translate: false,
                                isBold: true,
                              ),
                              AppText(
                                translate: false,
                                "${GenderStatus.getGender(Gender.male)}, 32 Years old",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
