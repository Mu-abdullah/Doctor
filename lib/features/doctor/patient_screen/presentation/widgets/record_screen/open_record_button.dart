import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../../core/style/color/app_color.dart';
import '../../../../../../core/style/widgets/custom_bottom_sheet.dart';
import 'record_screen.dart';

class OpenRecordButton extends StatelessWidget {
  const OpenRecordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.blueAccent,
      child: const Icon(HugeIcons.strokeRoundedMic01, color: AppColors.white),
      onPressed: () {
        customShowBottomSheet(context: context, builder: (_) => RecordScreen());
      },
    );
  }
}
