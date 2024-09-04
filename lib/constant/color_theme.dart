import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';

class IciciBankTheme {
  static const Color primaryColor = Color(0xFF003366); // Dark Blue
  static const Color accentColor = Color(0xFFFF6600); // ICICI Orange
  static const Color backgroundColor = Color(0xFFFFFFFF); // White
  static const Color textColor = Color(0xFF333333); // Dark Gray Text
  static const Color secondaryTextColor = Color(0xFF666666); // Light Gray Text
  static const Color lightGray = Color(0xFFE0E0E0); // Light Gray
  static const Color darkGray = Color(0xFF444444); // Dark Gray

  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: const AppBarTheme(
        color: primaryColor,
        iconTheme: IconThemeData(color: backgroundColor),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: accentColor,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: IciciBankFontTheme.textTheme,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: primaryColor,
        secondary: accentColor,
      ),
    );
  }
}
