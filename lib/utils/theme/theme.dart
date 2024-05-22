import 'package:flutter/material.dart';
import 'package:trogon/utils/constants/colors.dart';
import 'package:trogon/utils/theme/custom_theme/app_bar_theme.dart';
import 'package:trogon/utils/theme/custom_theme/text_theme.dart';

class CAppTheme {
  CAppTheme._();

  //? light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: CColors.primaryColor,
    textTheme: CTextTheme.lightTextTheme,
    appBarTheme: CAppBarTheme.lightAppBarTheme,
  );

 
}
