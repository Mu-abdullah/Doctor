import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../../core/style/color/app_color.dart';
import '../../cubits/bottom_bar_cubit/bottom_bar_cubit.dart';
import 'bottom_bar_item.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key, required this.cubit});

  final BottomBarCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.blueAccent,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomBarItem(
            icon: HugeIcons.strokeRoundedHome01,
            isSelected: cubit.currentIndex == 0,
            onTap: () => cubit.onTabTapped(0),
          ),
          BottomBarItem(
            icon: HugeIcons.strokeRoundedUserGroup,
            isSelected: cubit.currentIndex == 1,
            onTap: () => cubit.onTabTapped(1),
          ),
          BottomBarItem(
            icon: HugeIcons.strokeRoundedSettings01,
            isSelected: cubit.currentIndex == 2,
            onTap: () => cubit.onTabTapped(2),
          ),
        ],
      ),
    );
  }
}
