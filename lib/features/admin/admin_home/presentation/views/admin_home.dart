import 'package:flutter/material.dart';

import '../refactor/admin_home_body.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: AdminHomeBody()));
  }
}
