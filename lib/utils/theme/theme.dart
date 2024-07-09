


import 'package:au_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:au_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:au_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:au_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:au_store/utils/theme/custom_themes/outlined_buttom_theme.dart';
import 'package:au_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:au_store/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

import 'custom_themes/chip_theme.dart';


class AAppTheme{
  AAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ATextTheme.lightTheme,
    chipTheme: AChipTheme.lightChipTheme,
    appBarTheme: AAppBarTheme.lightAppBarTheme,
    checkboxTheme: ACheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: ABottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: AElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ATextFormFieldTheme.lightInputDecorationTheme,


  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: ATextTheme.darkTheme,
    chipTheme: AChipTheme.darkChipTheme,
    appBarTheme: AAppBarTheme.darkAppBarTheme,
    checkboxTheme: ACheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: ABottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: AElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ATextFormFieldTheme.darkInputDecorationTheme,
  );
}