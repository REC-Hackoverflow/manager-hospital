import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppColors {
  static const primary = Color(0XFFFD6B68);
  static const secondary = Color(0XFF7EB1F2);
  static const background = Color(0XFFF5F3F3);
  static const textLightMode = Color(0XFF3E394E);
  static const textFadedLightMode = Color(0XFF8A8A8A);
  static const cardLightMode = Color(0XFFFFFFFF);
}

abstract class _LightColors {
  static const background = Color(0XFFF5F3F3);
  static const card = AppColors.cardLightMode;
}

abstract class AppTheme {
  static const secondary = AppColors.secondary;
  static final visualDensity = VisualDensity.adaptivePlatformDensity;

  static ThemeData light() => ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: secondary),
        visualDensity: visualDensity,
        backgroundColor: _LightColors.background,
        scaffoldBackgroundColor: _LightColors.background,
        cardColor: _LightColors.card,
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(
            color: AppColors.textLightMode,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      );
}
