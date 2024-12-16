import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mo_7_store/core/app/env.variables.dart';
import 'package:mo_7_store/core/services/shared_pref.dart';
import 'package:mo_7_store/mo_7_store_appstore.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref.preferences.instantiatePreferences();
  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);

  Platform.isAndroid ? 
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDu7YCNzMMskcrg8p44biuO9TnCeTJVHUs',
      appId: 'com.example.mo_7_store', 
      messagingSenderId: '895133714603', 
      projectId: 'mo-7-store',
      ),
  ): await Firebase.initializeApp();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]
    ).then((_)=>runApp(const Mo7Store()));
  
}


