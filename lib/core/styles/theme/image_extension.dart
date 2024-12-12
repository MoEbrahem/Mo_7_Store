import 'package:flutter/material.dart';
import 'package:mo_7_store/core/styles/images/imageAssets.dart';

class ImageExtension extends ThemeExtension<ImageExtension>{
  ImageExtension({required this.imageAsset});

  final String imageAsset ;
  @override
  ThemeExtension<ImageExtension> copyWith({String? image}) {
    return ImageExtension(imageAsset: image!);
  }

  @override
  ThemeExtension<ImageExtension> lerp(covariant ThemeExtension<ImageExtension>? other, double t) {
    if (other is ImageAssets) {
      return this;
    }
      return ImageExtension(imageAsset: imageAsset);

  }
  ImageExtension dark = ImageExtension(imageAsset: "DarkImageAsset");
  ImageExtension light = ImageExtension(imageAsset: "LightImageAsset");

}