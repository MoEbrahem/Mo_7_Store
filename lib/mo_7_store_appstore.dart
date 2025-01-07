import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_7_store/core/app/checkConnectivity.dart';
import 'package:mo_7_store/core/app/cubit/app_cubit.dart';
import 'package:mo_7_store/core/app/di/getit.dart';
import 'package:mo_7_store/core/app/env.variables.dart';
import 'package:mo_7_store/core/common/screens/No_Internet.dart';
import 'package:mo_7_store/core/language/app_localizations_setup.dart';
import 'package:mo_7_store/core/routes/AppRoutes.dart';
import 'package:mo_7_store/core/services/shared_Pref/pref_Keys.dart';
import 'package:mo_7_store/core/services/shared_Pref/shared_pref.dart';
import 'package:mo_7_store/core/styles/theme/app_Theme.dart';

class Mo7Store extends StatelessWidget {
  const Mo7Store({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return BlocProvider(
            create: (context) => getit<AppCubit>()
              ..changeThemeMode(
                sharedMode: SharedPref().getBoolean(PrefKeys.themeMode),
              )
              ..getAppLanguage(),
            child: ScreenUtilInit(
              designSize: const Size(360, 732),
              minTextAdapt: true,
              child: BlocBuilder<AppCubit, AppState>(
                buildWhen: (previous, current) {
                  return previous != current;
                },
                builder: (context, state) {
                  final cubit = context.read<AppCubit>();
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    // EnvVariable.instance.debugMode,
                    
                    navigatorKey: getit<GlobalKey<NavigatorState>>(),
                    title: 'Mo_7_Store',
                    locale: Locale(cubit.currentLanguageCode),
                    localizationsDelegates:
                        AppLocalizationsSetup.localizationsDelegates,
                    supportedLocales: AppLocalizationsSetup.supportedLocales,
                    localeResolutionCallback:
                        AppLocalizationsSetup.localeResolutionCallback,
                    builder: (context, widget) {
                      return GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Scaffold(
                          body: Builder(
                            builder: (context) {
                              ConnectivityController.instance.init();
                              return widget!;
                            },
                          ),
                        ),
                      );
                    },
                    theme: cubit.isDark ? lightTheme() : darkTheme(),
                    onGenerateRoute: AppRoutes.onGenerateRoute,
                    initialRoute: SharedPref()
                                .getString(PrefKeys.accessToken) !=
                            null
                        ? SharedPref().getString(PrefKeys.userRole) == 'admin'
                            ? AppRoutes.adminHome
                            : AppRoutes.customerHome
                        : AppRoutes.login,
                  );
                },
              ),
            ),
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            title: 'No Internet connection',
            home: const Scaffold(
              body: NoInternet(),
            ),
          );
        }
      },
    );
  }
}
