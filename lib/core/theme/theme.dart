
import 'package:flutter/material.dart';
import 'package:inventory_flutter_app/core/theme/custom_theme/appbar_theme.dart';
import 'package:inventory_flutter_app/core/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:inventory_flutter_app/core/theme/custom_theme/check_box_theme.dart';
import 'package:inventory_flutter_app/core/theme/custom_theme/chip_theme.dart';
import 'package:inventory_flutter_app/core/theme/custom_theme/elevated_button_theme.dart';
import 'package:inventory_flutter_app/core/theme/custom_theme/outlined_button_theme.dart';
import 'package:inventory_flutter_app/core/theme/custom_theme/text_form_theme.dart';
import 'package:inventory_flutter_app/core/theme/custom_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primarySwatch: Colors.blue,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: CustomTextTheme.lightTextTheme,
    chipTheme: CustomChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: CustomAppbarTheme.lightAppBarTheme,
    checkboxTheme: CustomCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    primarySwatch: Colors.blue,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: CustomTextTheme.darkTextTheme,
    chipTheme: CustomChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: CustomAppbarTheme.darkAppBarTheme,
    checkboxTheme: CustomCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: CustomBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.darkInputDecorationTheme,
  );
}
