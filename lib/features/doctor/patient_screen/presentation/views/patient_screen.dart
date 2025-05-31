import 'package:flutter/material.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/style/widgets/custom_app_bar.dart';

class PatientScreen extends StatelessWidget {
  const PatientScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: CustomAppBar(title: LangKeys.patient));
  }
}
