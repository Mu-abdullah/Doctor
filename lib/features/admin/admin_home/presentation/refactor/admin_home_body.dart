import 'package:flutter/material.dart';

import '../widgets/admin_sections/mode_section.dart';
import '../widgets/admin_sections/settings_section.dart';

class AdminHomeBody extends StatelessWidget {
  const AdminHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(spacing: 16, children: [ModeSection(), SettingsSection()]),
    );
  }
}
