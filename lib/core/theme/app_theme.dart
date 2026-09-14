import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.background,
      colorScheme:ColorScheme.light(
        primary: AppColors.primary,
        surface: AppColors.surface,
      ),
    );
  }
}