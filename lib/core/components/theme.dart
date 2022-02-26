import 'package:flutter/material.dart';
import 'package:home25/core/constants/dark_light.dart';

class ThemeComp {
  static get lightTheme => ThemeData(
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      primary: DL_color.lightTheme,
    ),
    );
  static get datkTheme => ThemeData(
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      primary: DL_color.darkTheme,
    ),
  );
}
