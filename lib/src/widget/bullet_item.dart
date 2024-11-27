import 'package:flutter/material.dart';
import 'package:flutter_belgium_slides/src/theme/theme.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

enum FlutterBelgiumBulletItemStyle {
  onCard,
  onCanvas,
}

class FlutterBelgiumBulletItem extends StatelessWidget {
  final String text;
  final FlutterBelgiumBulletItemStyle styleType;
  const FlutterBelgiumBulletItem({
    required this.text,
    this.styleType = FlutterBelgiumBulletItemStyle.onCard,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FlutterBelgiumSlidesTheme.of(context);
    return ImpaktfullUiAutoLayout.horizontal(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 16,
      children: [
        ImpaktfullUiAssetWidget(
          asset: theme.assets.images.bullet,
          color: theme.colors.accent,
          width: 20,
        ),
        Expanded(
          child: Text(
            text,
            style: _getTextStyle(theme),
          ),
        ),
      ],
    );
  }

  TextStyle _getTextStyle(FlutterBelgiumSlidesTheme theme) {
    switch (styleType) {
      case FlutterBelgiumBulletItemStyle.onCard:
        return theme.textStyles.onCard.body;
      case FlutterBelgiumBulletItemStyle.onCanvas:
        return theme.textStyles.onCanvas.body;
    }
  }
}
