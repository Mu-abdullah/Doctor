import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/style/color/app_color.dart';
import '../../../../../core/style/widgets/custom_app_bar.dart';
import '../cubits/bottom_bar_cubit/bottom_bar_cubit.dart';
import '../widgets/bottom_bar/custom_bottom_navigation_bar.dart';

class DoctorHomeScreen extends StatelessWidget {
  const DoctorHomeScreen({super.key, this.isAdmin = false});
  final bool isAdmin;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomBarCubit(),
      child: BlocBuilder<BottomBarCubit, BottomBarState>(
        builder: (context, state) {
          var cubit = BottomBarCubit.get(context);
          return Scaffold(
            appBar: CustomAppBar(
              backgroundColor: AppColors.white,
              elevation: 5,
              title: cubit.titles[cubit.currentIndex],
              isBack: isAdmin,
            ),
            body: SafeArea(child: cubit.pages[cubit.currentIndex]),
            bottomNavigationBar: CustomBottomNavigationBar(cubit: cubit),
          );
        },
      ),
    );
  }
}
