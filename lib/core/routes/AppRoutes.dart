// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:mo_7_store/core/common/screens/SecondpageTest%20.dart';
import 'package:mo_7_store/core/common/screens/firstpageTest.dart';
import 'package:mo_7_store/core/common/screens/under_build_screen.dart';
import 'package:mo_7_store/core/routes/base_routes.dart';

class AppRoutes {
  static const String firstPage="first";
  static const String secondPage="second";

  static Route<void> onGenerateRoute(RouteSettings setting){
    final args = setting.arguments;
    switch (setting.name) {
      case firstPage:
        return BaseRoute(page: const FirstTest());
      case secondPage:
        return BaseRoute(page: const SecondTest());        
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }

  }

}