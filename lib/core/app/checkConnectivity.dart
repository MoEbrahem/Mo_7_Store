// ignore_for_file: file_names

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  ConnectivityController._();

  static ConnectivityController instance = ConnectivityController._();

  ValueNotifier<bool> isConnected = ValueNotifier(true);


  Future<void> init()async{
    final result = await Connectivity().checkConnectivity();
    isInternetConnected(result);
    Connectivity().onConnectivityChanged.listen(isInternetConnected);
  }

    bool isInternetConnected(List<ConnectivityResult> result) {
      if (result.last == ConnectivityResult.none){
        isConnected.value = false;
        return false;
      }else if(result.last == ConnectivityResult.wifi 
            || result.last == ConnectivityResult.mobile) {
        isConnected.value = true;     
        return true;
    }else{
      isConnected.value = false;
      return false;
    }


  }
}