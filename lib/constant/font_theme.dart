import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IciciBankFontTheme {
  static TextTheme textTheme = TextTheme(
    titleLarge: GoogleFonts.roboto(
      fontSize: 96,
      fontWeight: FontWeight.bold,
      letterSpacing: -1.5,
    ),
    titleMedium: GoogleFonts.roboto(
      fontSize: 60,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.5,
    ),
    titleSmall: GoogleFonts.roboto(
      fontSize: 48,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: GoogleFonts.roboto(
      fontSize: 34,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.25,
    ),
    headlineMedium: GoogleFonts.roboto(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: GoogleFonts.roboto(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.15,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.15,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.1,
    ),
    bodySmall: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.5,
    ),
    labelLarge: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.25,
    ),
    labelMedium: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.25,
    ),
    labelSmall: GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.4,
    ),
   displaySmall : GoogleFonts.roboto(
      fontSize: 10,
      fontWeight: FontWeight.normal,
      letterSpacing: 1.5,
    ),
  );

  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      primaryTextTheme: textTheme,
      
      textTheme: textTheme,
    );
  }
}
