import 'package:flutter/material.dart';
import 'package:mo_7_store/core/app/env.variables.dart';

class Mo7Store extends StatelessWidget {
  const Mo7Store({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
      title: 'Flutter Demo',
      home: Scaffold(
        body: Container(),
      ),
    );
  }
}