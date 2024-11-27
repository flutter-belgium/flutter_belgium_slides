import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_belgium_slides/src/theme/theme.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

class FlutterBelgiumSlidesSmallLogo extends StatelessWidget {
  final double size;
  final FlutterBelgiumSlidesTheme? theme;
  const FlutterBelgiumSlidesSmallLogo({
    this.size = 24,
    this.theme,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = this.theme ?? FlutterBelgiumSlidesTheme.of(context);
    return ImpaktfullUiAssetWidget(
      asset: theme.assets.images.smallLogo,
      height: size,
      width: size,
    );
  }
}
