import 'package:flutter/material.dart';
import 'package:mo_7_store/core/styles/colors/dart_color.dart';
import 'package:mo_7_store/core/styles/colors/light_color.dart';
import 'package:mo_7_store/core/styles/theme/color_extension.dart';

  ThemeData lightTheme(){
    return ThemeData(
      scaffoldBackgroundColor: LightColors.mainColor,
      extensions: <ThemeExtension<dynamic>>[MyColors.light],
      useMaterial3: true
    );
  }

  ThemeData darkTheme(){
    return ThemeData(
      scaffoldBackgroundColor: DarkColors.mainColor,
      extensions: <ThemeExtension<dynamic>>[MyColors.dark],
      useMaterial3: true
    );
  }
  