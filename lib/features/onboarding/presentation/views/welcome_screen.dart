import 'package:flutter/material.dart';
import 'package:pocketa_v2/core/themes/colors.dart';
import 'package:pocketa_v2/utils/responsive_utils.dart';

import '../../../../core/local_storage/shared_pref_service.dart';
import '../../../../core/widgets/buttons/button_multiple_types.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final bool isDark = SharedPrefServices.getIsDarkMode();
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor:
          isDark ? AppColors.backgroundDark : AppColors.backgroundLight,
      body: SafeArea(
        child: Padding(
          padding: ResponsiveUtilities.symmetricPadding(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Expanded(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: AppColors.primary,
                  child: Text(
                    'P',
                    style: TextStyle(
                      fontSize: ResponsiveUtilities.font(context, 48),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              ResponsiveUtilities.spacing(context),
              Text(
                'Pocketa',
                style: theme.textTheme.titleLarge?.copyWith(
                  color: isDark ? AppColors.textLight : AppColors.textDark,
                  fontSize: ResponsiveUtilities.font(context, 32),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                'Welcome to Pocketa!',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontSize: ResponsiveUtilities.font(context, 24),
                  color:
                      isDark
                          ? AppColors.textSecondary
                          : AppColors.textSecondary,
                ),
              ),
              ResponsiveUtilities.spacing(context),
              Text(
                'Your pocket accountant for\nSmart budgeting',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium?.copyWith(
                  color:
                      isDark
                          ? AppColors.textSecondary
                          : AppColors.textSecondary,
                ),
              ),
              const Spacer(),
              AppButton(
                label: 'Get Started',
                onPressed: () => Navigator.pushNamed(context, '/onboarding'),
                isEnabled: true,
              ),
              ResponsiveUtilities.spacing(context),
            ],
          ),
        ),
      ),
    );
  }
}
