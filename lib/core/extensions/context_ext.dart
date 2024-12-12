import 'package:flutter/material.dart';
import 'package:mo_7_store/core/language/app_localizations.dart';
import 'package:mo_7_store/core/styles/theme/image_extension.dart';

import '../styles/theme/color_extension.dart';

extension ContextExtensions on BuildContext{
  //  Color
  MyColors get color => Theme.of(this).extension<MyColors>()!;
  
  //  Image
  ImageExtension get image => Theme.of(this).extension<ImageExtension>()!;

  //  Languages
  String translate(String langKey){
    return AppLocalizations.of(this)!.translate(langKey).toString();
  }
  
  //  Routes
  Future<dynamic> pushNamed(String routeName) {
  
    return Navigator.of(this).pushNamed(routeName);
  
  }

  Future<dynamic> pushReplacementNamed(String routeName) {

    return Navigator.of(this).pushReplacementNamed(routeName);
  
  }
  Future<dynamic> pushNamedAndRemoveUntil(String routeName) {

    return Navigator.of(this).pushNamedAndRemoveUntil(routeName,(route) => false,);
  
  }    

  void pop(){
    return Navigator.pop(this);
    }
}