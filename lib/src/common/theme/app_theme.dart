
import 'package:flutter/material.dart';
import 'package:notebook/src/common/theme/app_colors.dart';
import 'package:notebook/src/common/theme/app_text_styles.dart';

class AppTheme {
  const AppTheme._();

  static final TextTheme _textTheme = TextTheme(
    displayLarge: AppTextStyles.display,
    headlineLarge: AppTextStyles.headline1,
    headlineMedium: AppTextStyles.headline2,
    titleLarge: AppTextStyles.subtitle1,
    bodyLarge: AppTextStyles.body1,
    bodyMedium: AppTextStyles.body2,
    labelLarge: AppTextStyles.button,
    bodySmall: AppTextStyles.caption,
  );

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: AppTextStyles.fontFamily,
      scaffoldBackgroundColor: AppColors.arcticWhite,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.azure,
        onPrimary: AppColors.white,
        secondary: AppColors.deepSkyBlue,
        onSecondary: AppColors.white,
        error: AppColors.errorLight,
        onError: AppColors.white,
        surface: AppColors.white,
        onSurface: AppColors.richBlack,
      ),
      textTheme: _textTheme.apply(
        bodyColor: AppColors.richBlack,
        displayColor: AppColors.richBlack,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: AppTextStyles.fontFamily,
      scaffoldBackgroundColor: AppColors.onyx,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.vividSky,
        onPrimary: AppColors.deepOcean,
        secondary: AppColors.vividSky,
        onSecondary: AppColors.deepOcean,
        error: AppColors.errorDark,
        onError: AppColors.onyx,
        surface: AppColors.darkMatter,
        onSurface: AppColors.ghostWhite,
      ),
      textTheme: _textTheme.apply(
        bodyColor: AppColors.ghostWhite,
        displayColor: AppColors.ghostWhite,
      ),
    );
  }
}