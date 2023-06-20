import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

class AppThemeData {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);

  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: _textTheme,
      iconTheme: IconThemeData(color: colorScheme.secondary, size: 24),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        titleTextStyle: AppTextStyles.merriWeatherBold18.copyWith(
          color: colorScheme.secondary,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 10,
          shadowColor: AppColors.c303030,
          backgroundColor: AppColors.c303030,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          minimumSize: const Size(300, 50),
        ),
      ),
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    secondary: AppColors.c303030,
    onSecondary: AppColors.cFFFFFF,
    error: AppColors.cEB5757,
    onError: AppColors.cEB5757,
    onBackground: AppColors.c808080,
    primary: AppColors.cF9F9F9,
    background: AppColors.cF9F9F9,
    onPrimary: AppColors.cF9F9F9,
    surfaceVariant: AppColors.cFFFFFF,
    surface: AppColors.cFFFFFF,
    onSurface: AppColors.cFFFFFF,
    brightness: Brightness.light,
  );

  static const TextTheme _textTheme = TextTheme(
    displayLarge: AppTextStyles.merriWeatherRegular30,
    displayMedium: AppTextStyles.gelasioMedium24,
    displaySmall: AppTextStyles.gelasioRegular18,
    headlineLarge: AppTextStyles.nunitoSansBold30,
    headlineMedium: AppTextStyles.nunitoSansBold24,
    headlineSmall: AppTextStyles.nunitoSansBold20,
    titleLarge: AppTextStyles.gelasioBold30,
    titleMedium: AppTextStyles.gelasioMedium24,
    titleSmall: AppTextStyles.gelasioRegular18,
    bodyLarge: AppTextStyles.nunitoSansRegular18,
    bodyMedium: AppTextStyles.nunitoSansRegular14,
    bodySmall: AppTextStyles.nunitoSansRegular10,
    labelLarge: AppTextStyles.nunitoSansRegular12,
    labelMedium: AppTextStyles.nunitoSansLight14,
    labelSmall: AppTextStyles.nunitoSansRegular6,
  );
}
