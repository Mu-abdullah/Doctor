import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/register_new_patient_cubit/register_new_patient_cubit.dart';
import '../refactor/student_new_patient_body.dart';

class StudentNewPatient extends StatelessWidget {
  const StudentNewPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterNewPatientCubit(),
      child: StudentNewPatientBody(),
    );
  }
}
