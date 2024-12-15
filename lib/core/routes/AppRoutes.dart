// ignore_for_file: unused_local_variable, file_names

import 'package:flutter/material.dart';
import 'package:mo_7_store/core/common/screens/under_build_screen.dart';
import 'package:mo_7_store/core/routes/base_routes.dart';
import 'package:mo_7_store/features/auth/presentation/screens/login_screen.dart';
import 'package:mo_7_store/features/auth/presentation/screens/sign_up_screen.dart';

class AppRoutes {

  static const String login="/login";
  static const String signup="/signup";

  static Route<void> onGenerateRoute(RouteSettings setting){
    final args = setting.arguments;
    switch (setting.name) {
      case login:
        return BaseRoute(page: const LoginScreen());
      case signup:
        return BaseRoute(page: const SignUpScreen());  
  
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}