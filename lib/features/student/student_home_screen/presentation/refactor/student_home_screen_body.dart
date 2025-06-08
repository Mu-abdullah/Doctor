import 'package:doctor/core/services/status/gender_status.dart';
import 'package:doctor/core/style/custom_widgets/patient_card.dart';
import 'package:flutter/material.dart';

class StudentHomeScreenBody extends StatelessWidget {
  const StudentHomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder:
          (context, index) => PatientCard(
            name: "Alia",
            age: "20",
            gender: GenderStatus.getGender(Gender.female),
          ),
    );
  }
}
