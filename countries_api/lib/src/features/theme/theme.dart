import 'package:countries_api/src/shared/utils/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: AppColors.veryLightGrey,
  colorScheme: ColorScheme.light(
    primary: AppColors.white,
    secondary: AppColors.veryDarkBlue2,
    tertiary: AppColors.grayishBlue,
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: AppColors.veryDarkBlue,
  colorScheme: ColorScheme.dark(
    primary: AppColors.darkBlue,
    secondary: AppColors.white,
    tertiary: AppColors.white,
  ),
);
