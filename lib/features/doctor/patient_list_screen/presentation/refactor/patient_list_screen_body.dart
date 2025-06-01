import 'package:flutter/material.dart';

import '../widgets/patient_grid_item.dart';

class PatientListScreenBody extends StatelessWidget {
  const PatientListScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 3 / 4,
      ),
      itemCount: 50,
      itemBuilder: (context, index) => PatientGridItem(),
    );
  }
}
