import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qclay/gen/fonts.gen.dart';

import 'app_colors.dart';

class AppThemes {
  static final ThemeData appTheme = ThemeData(
    fontFamily: FontFamily.helios,
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      secondary: AppColors.accent1,
      onSecondary: AppColors.primary,
      error: AppColors.error,
      onError: AppColors.onError,
      background: AppColors.background,
      onBackground: AppColors.onBackground11,
      surface: AppColors.surface,
      onSurface: AppColors.onSurface,
    ),
    appBarTheme: AppBarTheme(color: AppColors.primary),
    cupertinoOverrideTheme: CupertinoThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background,
      brightness: Brightness.dark,
    ),
    backgroundColor: AppColors.background,
    scaffoldBackgroundColor: AppColors.background,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.accent1,
      selectionColor: AppColors.accent1,
      selectionHandleColor: AppColors.accent1,
    ),
    indicatorColor: AppColors.accent1,
    textTheme: TextTheme(
      subtitle1: const TextStyle(color: AppColors.inputText, fontSize: 18, fontWeight: FontWeight.w400),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.divider),
      ) ,
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.accent1),
      ) ,
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.divider),
      ),
      hintStyle: const TextStyle(
        color: AppColors.inputHint,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
