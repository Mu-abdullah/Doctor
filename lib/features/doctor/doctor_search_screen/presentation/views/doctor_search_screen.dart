import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/style/widgets/app_text_form_felid.dart';
import '../../../../../core/style/widgets/custom_app_bar.dart';
import '../../../../../core/style/widgets/patient_card.dart';

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
                  return PatientCard(
                    age: "35",
                    name: "Muhammad",
                    gender: "male",
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
