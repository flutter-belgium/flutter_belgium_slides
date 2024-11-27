import 'package:flutter/material.dart';
import 'package:flutter_belgium_slides/src/widget/image.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

enum FlutterBelgiumSlidesTwoImageOrientation {
  horizontal,
  vertical,
}

class FlutterBelgiumSlidesTwoImage extends StatelessWidget {
  final ImpaktfullUiAsset asset;
  final BoxFit? assetFit;
  final EdgeInsetsGeometry? assetPadding;
  final ImpaktfullUiAsset? asset2;
  final BoxFit? asset2Fit;
  final EdgeInsetsGeometry? asset2Padding;
  final FlutterBelgiumSlidesTwoImageOrientation orientation;

  const FlutterBelgiumSlidesTwoImage({
    required this.asset,
    required this.asset2,
    this.assetFit,
    this.assetPadding,
    this.asset2Fit,
    this.asset2Padding,
    this.orientation = FlutterBelgiumSlidesTwoImageOrientation.vertical,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImpaktfullUiAutoLayout(
      orientation: orientation == FlutterBelgiumSlidesTwoImageOrientation.horizontal
          ? ImpaktfullUiAutoLayoutOrientation.horizontal
          : ImpaktfullUiAutoLayoutOrientation.vertical,
      spacing: 24,
      children: [
        Expanded(
          child: FlutterBelgiumSlidesImage(
            asset: asset,
            fit: assetFit,
            padding: assetPadding,
          ),
        ),
        if (asset2 != null) ...[
          Expanded(
            child: FlutterBelgiumSlidesImage(
              asset: asset2!,
              fit: asset2Fit,
              padding: asset2Padding,
            ),
          ),
        ],
      ],
    );
  }
}
