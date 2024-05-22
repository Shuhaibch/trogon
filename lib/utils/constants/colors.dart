import 'package:flutter/material.dart';

class CColors {
  CColors._();

  //* App Basic Color
  static Color primaryColor = Colors.white;
  

  
  //* Text Color
  static const Color textPrimaryColor = Color.fromARGB(255, 21, 21, 21);
  static const Color textSecondaryColor = Color(0xFF6c7570);
  static const Color textWhiteColor = Colors.white;

  //* Background Color
  static const Color lightColor = Color(0xFFF6F6F6);
  static const Color darkColor = Color(0xFF272727);
  static const Color primaryBackgroundColor = Color(0xFFF3f5FF);

  //* Border Color
  static const Color borderPrimaryColor = Color(0xFFD9D9D9);
  static const Color borderSecondaryColor = Color(0xFFE6E6E6);

  //* backgroud Container Color
  static const Color lightContainerColor = Color(0xFFF6F6F6);
  static Color darkContainerColor = Colors.white.withOpacity(0.1);


  //*Error Validation Colors
  static const Color errorColor = Color(0xFFD32F2f);
  static const Color successColor = Color(0xFF388E3C);
  static const Color warningColor = Color(0xFFF57c00);
  static const Color infoColor = Color(0xFF1976D2);

 
}
