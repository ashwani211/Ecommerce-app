import 'package:amazon_clone/utils/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomThemes{
  static ThemeData lightTheme = ThemeData.light();

  static ThemeData darkTheme = ThemeData.dark();

  static ThemeData blueTheme = ThemeData.light(useMaterial3: true).copyWith(primaryColor: CustomColors.primaryColorBlue);
}