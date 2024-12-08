import 'package:flutter/material.dart';
import 'package:mo_7_store/core/styles/imageAssets.dart';

class PageUnderBuildScreen extends StatelessWidget {
  const PageUnderBuildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageAssets.pageUnderBuildScreen),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
