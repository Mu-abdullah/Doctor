import 'package:doctor/core/language/lang_keys.dart';
import 'package:doctor/core/style/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/style/widgets/app_text.dart';

class DoctorSearchScreen extends StatelessWidget {
  const DoctorSearchScreen({super.key, this.searchQuery});
  final String? searchQuery;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: LangKeys.search),
      body: Center(
        child: AppText(
          searchQuery ?? LangKeys.search,
          fontSize: 18,
          translate: false,
        ),
      ),
    );
  }
}
