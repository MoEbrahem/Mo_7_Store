import 'package:flutter/material.dart';
import 'package:mo_7_store/core/styles/images/app_images.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageAssets.noNetwork,
            ),
            fit: BoxFit.fill
            ),
        ), 
      ),
      
    );
  }
}