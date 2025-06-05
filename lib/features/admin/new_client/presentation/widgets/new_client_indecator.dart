import 'package:doctor/core/extextions/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/style/color/app_color.dart';
import '../../../../../core/style/statics/app_statics.dart';
import '../../../../../core/style/widgets/app_text.dart';
import '../cubits/new_client_cubit/new_client_cubit.dart';

class NewClientPageIndicator extends StatelessWidget {
  const NewClientPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final isArabic = context.langCode == 'ar';
    return BlocBuilder<NewClientCubit, NewClientState>(
      builder: (context, state) {
        final cubit = NewClientCubit.get(context);
        final totalPages = cubit.pages.length;
        final currentPage = state.currentPage;

        return Padding(
          padding: AppPadding.symmetricPadding(vertical: 16),
          child: Column(
            spacing: 16,
            children: [
              // Animated step progress bar
              _AnimatedStepProgress(
                currentStep: currentPage,
                totalSteps: totalPages,
                isArabic: isArabic,
              ),

              // Navigation controls
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back button with conditional styling
                  _NavigationButton(
                    isEnabled: currentPage > 0,
                    onPressed: cubit.previousPage,
                    icon:
                        isArabic
                            ? HugeIcons.strokeRoundedNext
                            : HugeIcons.strokeRoundedPrevious,
                    label: LangKeys.previous,
                    isReversed: true,
                  ),

                  // Next button with progress indicator
                  _NavigationButton(
                    isEnabled: currentPage < totalPages - 1,
                    onPressed: cubit.nextPage,
                    icon:
                        isArabic
                            ? HugeIcons.strokeRoundedPrevious
                            : HugeIcons.strokeRoundedNext,
                    label: LangKeys.next,
                    showProgress: true,
                    progress: (currentPage + 1) / totalPages,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _AnimatedStepProgress extends StatelessWidget {
  final int currentStep;
  final int totalSteps;
  final bool isArabic;

  const _AnimatedStepProgress({
    required this.currentStep,
    required this.totalSteps,
    required this.isArabic,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final stepWidth = constraints.maxWidth / totalSteps;

          return Stack(
            children: [
              // Background line
              Container(
                height: 3,
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: AppColors.grey.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              // Animated progress
              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeOutCubic,
                right: isArabic ? 0 : null,
                left: isArabic ? null : 0,
                width: (currentStep + 1) * stepWidth,
                child: Container(
                  height: 3,
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: AppColors.blueAccent.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              // Step indicators
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(totalSteps, (index) {
                  final isActive = index <= currentStep;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOutBack,
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color:
                          isActive
                              ? AppColors.blueAccent
                              : AppColors.grey.withValues(alpha: 0.2),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color:
                            isActive
                                ? AppColors.blueAccent
                                : AppColors.grey.withValues(alpha: 0.5),
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 200),
                        child:
                            isActive
                                ? Icon(
                                  Icons.check,
                                  size: 14,
                                  color: AppColors.white,
                                  key: ValueKey('check_$index'),
                                )
                                : AppText(
                                  '${index + 1}',
                                  translate: false,
                                  color:
                                      isActive
                                          ? AppColors.white
                                          : AppColors.black,
                                  fontSize: 10,
                                  key: ValueKey('text_$index'),
                                ),
                      ),
                    ),
                  );
                }),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _NavigationButton extends StatelessWidget {
  final bool isEnabled;
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  final bool isReversed;
  final bool showProgress;
  final double? progress;

  const _NavigationButton({
    required this.isEnabled,
    required this.onPressed,
    required this.icon,
    required this.label,
    this.isReversed = false,
    this.showProgress = false,
    this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: isEnabled ? 1.0 : 0.5,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isEnabled ? onPressed : null,
          borderRadius: BorderRadius.circular(30),
          child: Container(
            padding: AppPadding.symmetricPadding(vertical: 10),
            constraints: const BoxConstraints(minWidth: 120),
            child: Row(
              spacing: 12,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              textDirection: isReversed ? TextDirection.rtl : TextDirection.ltr,
              children: [
                AppText(
                  label,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blueAccent,
                ),
                Icon(icon, size: 20, color: AppColors.blueAccent),
                if (showProgress && progress != null) ...[
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      value: progress,
                      strokeWidth: 2,
                      backgroundColor: AppColors.blueAccent.withValues(
                        alpha: 0.2,
                      ),
                      valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
