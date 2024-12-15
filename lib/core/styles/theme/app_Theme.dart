import 'package:flutter/material.dart';
import 'package:mo_7_store/core/styles/colors/dark_color.dart';
import 'package:mo_7_store/core/styles/colors/light_color.dart';
import 'package:mo_7_store/core/styles/fonts/fontFamily.dart';
import 'package:mo_7_store/core/styles/theme/color_extension.dart';

  ThemeData lightTheme(){
    return ThemeData(
      scaffoldBackgroundColor: LightColors.mainColor,
      extensions: const <ThemeExtension<dynamic>>[MyColors.light],
      useMaterial3: true,
      textTheme: TextTheme(
        displaySmall: TextStyle(
          fontSize: 14,
          color: LightColors.black,
          fontFamily: FontFamilyHelper.geoLocalizedFontFamily(),
        )
      )
    );
  }

  ThemeData darkTheme(){
    return ThemeData(
      scaffoldBackgroundColor: DarkColors.mainColor,
      extensions: const <ThemeExtension<dynamic>>[MyColors.dark],
      useMaterial3: true,
      textTheme: TextTheme(
        displaySmall: TextStyle(
          fontSize: 14,
          color: DarkColors.white,
          fontFamily: FontFamilyHelper.geoLocalizedFontFamily(),
        )
      )
    );
  }
  