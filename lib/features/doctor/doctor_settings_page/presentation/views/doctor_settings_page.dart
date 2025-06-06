import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/style/statics/app_statics.dart';
import '../cubits/doctor_setting_cubit/doctor_setting_cubit.dart';
import '../refactor/doctor_settings_page_body.dart';

class DoctorSettingsPage extends StatelessWidget {
  const DoctorSettingsPage({super.key, this.isStudent = false});
  final bool isStudent;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorSettingCubit(isStudent: isStudent),
      child: Padding(
        padding: AppPadding.symmetricPadding(),
        child: SingleChildScrollView(child: DoctorSettingsPageBody()),
      ),
    );
  }
}
