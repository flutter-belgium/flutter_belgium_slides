import 'package:flutter/material.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

class FlutterBelgiumSlidesImage extends StatelessWidget {
  final ImpaktfullUiAsset asset;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  const FlutterBelgiumSlidesImage({
    required this.asset,
    this.fit,
    this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImpaktfullUiCard(
      padding: padding,
      child: ImpaktfullUiAssetWidget(
        width: double.infinity,
        height: double.infinity,
        asset: asset,
        fit: fit,
      ),
    );
  }
}
