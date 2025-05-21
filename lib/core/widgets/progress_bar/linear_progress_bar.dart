import 'package:flutter/material.dart';

import '../../../utils/responsive_utils.dart';
import '../../themes/colors.dart';

class OnboardingHeader extends StatelessWidget {
  final String title;
  final int? step; // 1, 2, 3, 4
  final int totalSteps;
  final EdgeInsetsGeometry? padding;
  final CrossAxisAlignment alignment;
  final bool isDark;

  const OnboardingHeader({
    super.key,
    required this.title,
    this.step,
    required this.totalSteps,
    this.padding,
    this.alignment = CrossAxisAlignment.start,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final progress =
        (step != null && totalSteps > 0)
            ? (step!.clamp(1, totalSteps) / totalSteps)
            : null;

    return Padding(
      padding:
          padding ??
          EdgeInsets.only(
            top: ResponsiveUtilities.height(context, 0.01),
            bottom: ResponsiveUtilities.height(context, 0.02),
          ),
      child: Column(
        crossAxisAlignment: alignment,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (progress != null) ...[
            TweenAnimationBuilder<double>(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              tween: Tween<double>(begin: 0, end: progress),
              builder:
                  (context, value, _) => ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: LinearProgressIndicator(
                      value: value,
                      backgroundColor: Colors.grey.shade300,
                      color: theme.primaryColor,
                      minHeight: ResponsiveUtilities.height(context, 0.008),
                    ),
                  ),
            ),
            SizedBox(height: ResponsiveUtilities.height(context, 0.015)),
          ],
          Text(
            title,
            style: theme.textTheme.displayLarge?.copyWith(
              fontSize: theme.textTheme.titleLarge!.fontSize,
              fontWeight: FontWeight.bold,
              color: isDark ? AppColors.textLight : AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
