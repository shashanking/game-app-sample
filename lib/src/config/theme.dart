/// Theme.dart consists
///
import 'package:flutter/material.dart';

class ThemeConfig {
  static const kPrimaryColor = Color(0xFFFF8B22);
  static const kSecondaryColor = Color(0xFF0053BE);
  static const kAccentColor = Color(0xFFFF4081);
  static const kGreyTextColor = Color(0xFF7B7B7B);
  static const kTextColor = Color(0xFF000000);
  static const kBackgroundColor = Color(0xFFF7F7FA);

  // gradients for button
  static const kPrimaryGradient = LinearGradient(
    colors: [Color(0xFFFFC004), Color(0xFFFF742F)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const kSecondaryGradient = LinearGradient(
    colors: [Color(0xFF0052BE), Color(0xFF0B7DC4)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const double kDefaultPadding = 16.0;

  final ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: kBackgroundColor,
    fontFamily: 'Poppins',
    primaryColor: kPrimaryColor,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: kTextColor,
      ),
      displayMedium: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: kTextColor,
      ),
      displaySmall: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: kTextColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: kTextColor,
      ),
      headlineSmall: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: kTextColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 16.0,
        color: kTextColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.0,
        color: kTextColor,
      ),
      bodySmall: TextStyle(
        fontSize: 12.0,
        color: kTextColor,
      ),
      labelLarge: TextStyle(
        fontSize: 14.0,
        // fontWeight: FontWeight.bold,
        color: kBackgroundColor,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kAccentColor),
  );
}
