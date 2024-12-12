import 'package:flutter/material.dart';
import 'package:mo_7_store/core/styles/colors/dart_color.dart';
import 'package:mo_7_store/core/styles/colors/light_color.dart';

class MyColors extends ThemeExtension<MyColors> {
  MyColors({required this.mainColor});
  final Color? mainColor;

  @override
  ThemeExtension<MyColors> copyWith({Color? mainColor}) {
    return MyColors(mainColor: mainColor);
  }

  @override
  ThemeExtension<MyColors> lerp(
      covariant ThemeExtension<MyColors>? other, double t) {
    if (other is! MyColors) {
      return this;
    }

    return MyColors(
      mainColor: mainColor,
    );
  }

  static MyColors dark = MyColors(mainColor: DarkColors.mainColor);
  static MyColors light = MyColors(mainColor: LightColors.mainColor);
}
