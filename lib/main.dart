import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mo_7_store/mo_7_store_appstore.dart';

void main() async{
  Platform.isAndroid ? 
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'apiKey',
      appId: 'appId', 
      messagingSenderId: 'messagingSenderId', 
      projectId: 'projectId',),
  ): await Firebase.initializeApp();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]
    ).then((_)=>runApp(const Mo7Store()));
  
}


