import 'package:flutter/material.dart';

import '../widgets/doctor_name.dart';
import '../widgets/search_field_widget.dart';

class DoctorHomePageBody extends StatelessWidget {
  const DoctorHomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 10,
      children: [DoctorName(), SearchFieldWidget()],
    );
  }
}
