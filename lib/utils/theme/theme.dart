import 'package:ecommerce_sample/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerce_sample/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecommerce_sample/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerce_sample/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecommerce_sample/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerce_sample/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:ecommerce_sample/utils/theme/custom_themes/text_field_theme.dart';
import 'package:ecommerce_sample/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class CAppTheme {
  CAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: CAppbarTheme.lightAppbarTheme,
    bottomSheetTheme: CBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: CCheckboxTheme.lightCheckboxTheme,
    chipTheme: CChipTheme.lightChipTheme,
    elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: COutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CTextFieldTheme.lightInputDecorationTheme,
    textTheme: CTextTheme.lightTextTheme,

  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: CAppbarTheme.darkAppbarTheme,
    bottomSheetTheme: CBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: CCheckboxTheme.darkCheckboxTheme,
    chipTheme: CChipTheme.darkChipTheme,
    elevatedButtonTheme: CElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: COutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: CTextFieldTheme.darkInputDecorationTheme,
    textTheme: CTextTheme.darkTextTheme,
  );
}