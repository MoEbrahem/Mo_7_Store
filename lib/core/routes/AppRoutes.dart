// ignore_for_file: unused_local_variable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mo_7_store/core/app/di/getit.dart';
import 'package:mo_7_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:mo_7_store/core/common/screens/under_build_screen.dart';
import 'package:mo_7_store/core/routes/base_routes.dart';
import 'package:mo_7_store/features/admin/home_admin.dart';
import 'package:mo_7_store/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:mo_7_store/features/auth/presentation/screens/login_screen.dart';
import 'package:mo_7_store/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:mo_7_store/features/customer/home_customer.dart';

class AppRoutes {
  static const String login = "/login";
  static const String signup = "/signup";
  static const String customerHome = "/customer";
  static const String adminHome = "/Admin";

  static Route<void> onGenerateRoute(RouteSettings setting) {
    final args = setting.arguments;
    switch (setting.name) {
      case login:
        return BaseRoute(
          page: BlocProvider(
            create: (context) => getit<AuthBloc>(),
            child: const LoginScreen(),
          ),
        );
      case signup:
        return BaseRoute(page: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context)=>getit<UploadImageCubit>()),
          ],
          child: const SignUpScreen()));
      case customerHome:
        return BaseRoute(page: const HomeCustomer());
      case adminHome:
        return BaseRoute(page: const HomeAdmin());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
