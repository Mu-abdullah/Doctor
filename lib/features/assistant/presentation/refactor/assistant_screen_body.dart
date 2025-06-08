
import 'package:flutter/material.dart';

import '../../../../core/style/statics/app_statics.dart';
import '../../../../core/style/widgets/custom_divider.dart';
import '../widgets/assistant_patients_cards.dart';
import '../widgets/dr_assistant_name.dart';

class AssistantScreenBody extends StatelessWidget {
  const AssistantScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppPadding.symmetricPadding(),
        child: Column(
          spacing: 16,
          children: [
            DrAssistantName(),
            CustomDivider(opacity: 0.5, endIndent: 0, indent: 0),
            AssistantPatientsCards(),
          ],
        ),
      ),
    );
  }
}

