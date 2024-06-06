import 'package:flutter/material.dart';
import 'package:malina/core/colors/app_colors.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    brightness: Brightness.light,
    surface: AppColors.lightBackground,
    primary: AppColors.malina,
  ),

  disabledColor: AppColors.grayDisabled,
  // textTheme: TextTheme(
  //   titleLarge: AppFonts.s22w600.copyWith(color: AppColors.black),
  //   bodyMedium: AppFonts.s16w500.copyWith(color: AppColors.black),
  //   displaySmall: AppFonts.s12w400.copyWith(color: AppColors.black),
  // ),
);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    brightness: Brightness.dark,
    surface: AppColors.lightBackground,
    primary: AppColors.malina,
  ),
  disabledColor: AppColors.grayDisabled,
  // textTheme: TextTheme(
  //   titleLarge: AppFonts.s22w600.copyWith(color: AppColors.white),
  //   bodyMedium: AppFonts.s16w500.copyWith(color: AppColors.white),
  //   displaySmall: AppFonts.s12w400.copyWith(color: AppColors.white),
  // ),
);
