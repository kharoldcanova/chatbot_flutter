import 'package:chatbot_flutter/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme customText = GoogleFonts.poppinsTextTheme(TextTheme(
  headlineLarge: TextStyle(
    color: MyColors.whitePalette[700],
    fontWeight: FontWeight.w400,
  ),
  headlineSmall: TextStyle(
    color: MyColors.whitePalette[700],
    fontWeight: FontWeight.w600,
  ),
  titleLarge: TextStyle(
    color: MyColors.whitePalette[700],
    fontWeight: FontWeight.w600,
  ),
  titleMedium: TextStyle(
    color: MyColors.whitePalette[700],
    fontWeight: FontWeight.w600,
  ),
  titleSmall: TextStyle(
    color: MyColors.whitePalette[700],
    fontWeight: FontWeight.w600,
  ),
  labelLarge: TextStyle(
    color: MyColors.whitePalette[500],
    fontWeight: FontWeight.w600,
  ),
  bodyLarge: TextStyle(
    color: MyColors.whitePalette[500],
  ),
  bodyMedium: TextStyle(
    color: MyColors.whitePalette[500],
  ),
  bodySmall: TextStyle(
    color: MyColors.whitePalette[500],
  ),
));
