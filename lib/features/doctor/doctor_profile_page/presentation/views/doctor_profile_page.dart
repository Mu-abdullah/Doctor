import 'package:flutter/material.dart';

import '../../../../../core/style/widgets/app_text.dart';

class DoctorProfilePage extends StatelessWidget {
  const DoctorProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AppText('Doctor Profile Content', fontSize: 18, translate: false),
    );
  }
}
