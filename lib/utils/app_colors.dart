import 'package:flutter/material.dart';

class AppColors {
  // ================== Core Colors ==================
  static const Color primary = Color(0xFF4CBB17); // Vibrant green for Save
  static const Color secondary = Color(0xFF48872B); // Muted green
  static const Color darkGreen = Color(0xFF39542C);
  static const Color darkerGreen = Color(0xFF293325);
  static const Color lightBackground = Color(0xFFF5F5F5);
  static const Color darkBackground = Color(0xFF121212);
  static const Color surfaceLight = Colors.white;
  static const Color surfaceDark = Color(0xFF1E1E1E);
  static const Color textPrimaryLight = darkerGreen;
  static const Color textSecondaryLight = Color(0xFF666666);
  static const Color textPrimaryDark = Colors.white;
  static const Color textSecondaryDark = Colors.white70;
  static const Color error = Color(0xFFB00020);
  static const Color success = primary;
  static const Color warning = Color(0xFFFFA000);
  static const Color info = Color(0xFF0288D1);

  // ================== Button Colors ==================
  static const Color buttonSaveBackground = primary;
  static const Color buttonSaveText = Colors.black;
  static const Color buttonCancelBackground = Color(0xFF9E9E9E);
  static const Color buttonCancelText = Colors.white;
  static const Color buttonDeleteBackground = error;
  static const Color buttonDeleteText = Colors.white;
  static const Color buttonSecondaryBackground = secondary;
  static const Color buttonSecondaryText = Colors.white;

  // ================== Input Colors ==================
  static const Color inputBackgroundLight = surfaceLight;
  static const Color inputBackgroundDark = surfaceDark;
  static const Color inputBorder = darkGreen;

  // ================== Card Colors ==================
  static const Color cardBackgroundLight = surfaceLight;
  static const Color cardBackgroundDark = surfaceDark;
  static const Color cardShadow = Color(0xFFE0E0E0);
  static const Color cardTextColorLight = darkerGreen; // for white/light cards
  static const Color cardTextColorDark = Colors.white; // for dark cards

  // ================== Theme Helpers (New) ==================
  static AppBarTheme _appBarTheme(bool isDark) => AppBarTheme(
    backgroundColor: primary,
    foregroundColor: isDark ? Colors.white : Colors.black,
  );

  static InputDecorationTheme _inputDecorationTheme(
    Color fillColor,
    Color labelColor,
  ) {
    return InputDecorationTheme(
      filled: true,
      fillColor: fillColor,
      border: OutlineInputBorder(borderSide: BorderSide(color: inputBorder)),
      labelStyle: TextStyle(color: labelColor),
    );
  }

  static TextTheme _textTheme(Color primaryText, Color secondaryText) =>
      TextTheme(
        displayLarge: TextStyle(
          color: primaryText,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          color: primaryText,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(color: primaryText, fontSize: 16),
        bodyMedium: TextStyle(color: secondaryText, fontSize: 14),
      ).apply(fontFamily: 'NotoSansEthiopic'); // <--- Applied globally

  // ================== Light Theme ==================
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: primary,
      scaffoldBackgroundColor: lightBackground,
      colorScheme: ColorScheme.light(
        primary: primary,
        onPrimary: buttonSaveText,
        secondary: secondary,
        onSecondary: buttonSecondaryText,
        surface: surfaceLight,
        onSurface: textPrimaryLight,
        error: error,
      ),
      appBarTheme: _appBarTheme(false),
      textTheme: _textTheme(
        textPrimaryLight,
        textSecondaryLight,
      ), // <--- Refactored
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: baseButtonStyle(
          backgroundColor: buttonSaveBackground,
          foregroundColor: buttonSaveText,
        ),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: buttonSaveBackground,
        textTheme: ButtonTextTheme.primary,
      ),
      inputDecorationTheme: _inputDecorationTheme(
        inputBackgroundLight,
        textSecondaryLight,
      ),
      cardTheme: const CardThemeData(
        color: cardBackgroundLight,
        shadowColor: cardShadow,
      ),
    );
  }

  // ================== Dark Theme ==================
  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: primary,
      scaffoldBackgroundColor: darkBackground,
      colorScheme: ColorScheme.dark(
        primary: primary,
        onPrimary: buttonSaveText,
        secondary: secondary,
        onSecondary: buttonSecondaryText,
        surface: surfaceDark,
        onSurface: textPrimaryDark,
        error: error,
      ),
      appBarTheme: _appBarTheme(true),
      textTheme: _textTheme(textPrimaryDark, textSecondaryDark),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: baseButtonStyle(
          backgroundColor: buttonSaveBackground,
          foregroundColor: buttonSaveText,
        ),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: buttonSaveBackground,
        textTheme: ButtonTextTheme.primary,
      ),
      inputDecorationTheme: _inputDecorationTheme(
        inputBackgroundDark,
        textSecondaryDark,
      ),
      cardTheme: const CardThemeData(
        color: cardBackgroundDark,
        shadowColor: cardShadow,
      ),
    );
  }

  // ================== Unified Button Style (New) ==================
  static ButtonStyle baseButtonStyle({
    required Color backgroundColor,
    required Color foregroundColor,
  }) {
    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      textStyle: const TextStyle(fontSize: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    );
  }

  // ================== Individual Button Styles ==================
  static ButtonStyle saveButtonStyle() => baseButtonStyle(
    backgroundColor: buttonSaveBackground,
    foregroundColor: buttonSaveText,
  );

  static ButtonStyle cancelButtonStyle() => baseButtonStyle(
    backgroundColor: buttonCancelBackground,
    foregroundColor: buttonCancelText,
  );

  static ButtonStyle deleteButtonStyle() => baseButtonStyle(
    backgroundColor: buttonDeleteBackground,
    foregroundColor: buttonDeleteText,
  );
}
