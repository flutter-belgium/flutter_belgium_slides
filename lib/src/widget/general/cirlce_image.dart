import 'package:flutter/material.dart';
import 'package:flutter_belgium_slides/src/widget/general/no_cors_image.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

class CircleImage extends StatelessWidget {
  final String? imageUrl;
  final ImpaktfullUiAsset? asset;
  final double size;

  const CircleImage({
    required String this.imageUrl,
    this.size = 200,
    super.key,
  }) : asset = null;

  const CircleImage.asset({
    required ImpaktfullUiAsset this.asset,
    this.size = 200,
    super.key,
  }) : imageUrl = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      width: size,
      height: size,
      child: Builder(
        builder: (context) {
          if (asset != null) {
            return ImpaktfullUiAssetWidget(
              asset: asset,
              width: size,
              height: size,
            );
          }
          if (imageUrl != null) {
            return NoCorsImage(
              url: imageUrl,
              height: size,
              width: size,
            );
          }
          throw Exception('No image provided');
        },
      ),
    );
  }
}

class ImpaktfullUiImage {}
