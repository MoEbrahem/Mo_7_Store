import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_7_store/core/app/checkConnectivity.dart';
import 'package:mo_7_store/core/app/env.variables.dart';
import 'package:mo_7_store/core/common/screens/No_Internet.dart';
import 'package:mo_7_store/core/language/app_localizations_setup.dart';
import 'package:mo_7_store/core/routes/AppRoutes.dart';
import 'package:mo_7_store/core/styles/theme/app_Theme.dart';

class Mo7Store extends StatelessWidget {
  const Mo7Store({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(360, 732),
            child: MaterialApp(
              debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
              title: 'Mo_7_Store',
              locale: const Locale("en"),
              localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
              supportedLocales: AppLocalizationsSetup.supportedLocales,
              localeResolutionCallback: AppLocalizationsSetup.localeResolutionCallback,
              builder: (context, widget) {
                return GestureDetector(
                  onTap: (){
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
              theme: darkTheme(),
              onGenerateRoute: AppRoutes.onGenerateRoute,  
              initialRoute: AppRoutes.login,  
              // home: ,
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
