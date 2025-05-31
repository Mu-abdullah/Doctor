import 'package:flutter/material.dart';

import '../widgets/last_visit/last_visit.dart';
import '../widgets/patient_info.dart';
import '../widgets/visit_history/visit_history.dart';

class PatientScreenBody extends StatelessWidget {
  const PatientScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          spacing: 24,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [PatientInfo(), LastVisit(), VisitHistory()],
        ),
      ),
    );
  }
}
