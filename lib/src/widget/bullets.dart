import 'package:flutter/material.dart';
import 'package:flutter_belgium_slides/src/widget/bullet_item.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

class FlutterBelgiumSlidesBullets extends StatelessWidget {
  final List<String> bullets;
  final FlutterBelgiumBulletItemStyle styleType;
  const FlutterBelgiumSlidesBullets({
    required this.bullets,
    required this.styleType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImpaktfullUiAutoLayout.vertical(
      spacing: 32,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var bullet in bullets) ...[
          FlutterBelgiumBulletItem(
            text: bullet,
            styleType: styleType,
          ),
        ],
      ],
    );
  }
}
