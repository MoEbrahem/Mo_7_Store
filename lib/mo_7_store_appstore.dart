import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_7_store/core/app/checkConnectivity.dart';
import 'package:mo_7_store/core/app/env.variables.dart';
import 'package:mo_7_store/core/common/screens/No_Internet.dart';
import 'package:mo_7_store/core/styles/fonts/fontFamily.dart';
import 'package:mo_7_store/core/styles/fonts/fontWeight.dart';

class Mo7Store extends StatelessWidget {
  const Mo7Store({super.key});

  // This widget is the root of your application.
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
              builder: (context, widget) {
                return Scaffold(
                  body: Builder(
                    builder: (context) {
                      ConnectivityController.instance.init();
                      return widget!;
                    },
                  ),
                );
              },
              theme: ThemeData(
                  colorScheme:
                      ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                  useMaterial3: true),
              home: Scaffold(
                appBar: AppBar(
                  title: const Text("Mo_7_Store"),
                ),
                body: const Center(
                  child:  Column(
                    children: [
                      Text(
                        "Hello World",
                        style: TextStyle(
                            fontWeight: FontHelperWeight.fontMedium,
                            fontSize: 20),
                      ),
                      Text(
                        "Hello World",
                        style: TextStyle(
                            fontFamily: FontFamilyHelper.poppinsEnglishFont,
                            fontWeight: FontHelperWeight.fontMedium,
                            fontSize: 20),
                      ),
                      Text(
                        "Hello World",
                        style: TextStyle(
                            fontFamily: FontFamilyHelper.poppinsEnglishFont,
                            fontWeight: FontHelperWeight.fontRegular,
                            fontSize: 20),
                      ),
                      Text(
                        "هلا بالعالم",
                        style: TextStyle(
                            fontWeight: FontHelperWeight.fontBold,
                            fontSize: 20),
                      ),
                      Text(
                        "هلا بالعالم",
                        style: TextStyle(
                            fontFamily: FontFamilyHelper.cairoArabicFont,
                            fontWeight: FontHelperWeight.fontBold,
                            fontSize: 20),
                      ),
                      Text(
                        "هلا بالعالم",
                        style: TextStyle(
                            fontFamily: FontFamilyHelper.cairoArabicFont,
                            fontWeight: FontHelperWeight.fontRegular,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
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
