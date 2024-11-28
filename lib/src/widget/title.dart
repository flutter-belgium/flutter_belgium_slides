import 'package:flutter/material.dart';
import 'package:flutter_belgium_slides/src/theme/theme.dart';

enum FlutterBelgiumSlidesTitleType {
  superLargeTitle,
  extraLargeTitle,
  largeTitle,
  title,
  smallSubtitle,
}

enum FlutterBelgiumSlidesTitleStyleType {
  onCanvas,
  onCanvasSecondary,
  onCard,
  onCardSecondary,
  canvasAccent,
}

class FlutterBelgiumSlidesTitle extends StatelessWidget {
  final String title;
  final FlutterBelgiumSlidesTitleType? type;
  final FlutterBelgiumSlidesTitleStyleType styleType;
  final TextStyle? style;
  final TextAlign? textAlign;
  final bool dense;
  const FlutterBelgiumSlidesTitle({
    required this.title,
    this.type,
    this.styleType = FlutterBelgiumSlidesTitleStyleType.onCanvas,
    this.style,
    this.textAlign,
    this.dense = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: dense ? 0 : 250,
      ),
      child: Text(
        title,
        style: _getTextStyle(context),
        textAlign: textAlign,
      ),
    );
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (style != null) {
      return style!;
    }
    final type = this.type;
    if (type == null) {
      return const TextStyle();
    }
    final textStyles = _getTextStyleType(context, styleType);
    switch (type) {
      case FlutterBelgiumSlidesTitleType.superLargeTitle:
        return textStyles.superLargeTitle;
      case FlutterBelgiumSlidesTitleType.extraLargeTitle:
        return textStyles.extraLargeTitle;
      case FlutterBelgiumSlidesTitleType.largeTitle:
        return textStyles.largeTitle;
      case FlutterBelgiumSlidesTitleType.title:
        return textStyles.title;
      case FlutterBelgiumSlidesTitleType.smallSubtitle:
        return textStyles.smallTitle;
    }
  }

  FlutterBelgiumSlidesTextStyleTheme _getTextStyleType(
    BuildContext context,
    FlutterBelgiumSlidesTitleStyleType styleType,
  ) {
    final theme = FlutterBelgiumSlidesTheme.of(context);
    switch (styleType) {
      case FlutterBelgiumSlidesTitleStyleType.onCanvas:
        return theme.textStyles.onCanvas;
      case FlutterBelgiumSlidesTitleStyleType.onCanvasSecondary:
        return theme.textStyles.onCanvasSecondary;
      case FlutterBelgiumSlidesTitleStyleType.onCard:
        return theme.textStyles.onCard;
      case FlutterBelgiumSlidesTitleStyleType.onCardSecondary:
        return theme.textStyles.onCardSecondary;
      case FlutterBelgiumSlidesTitleStyleType.canvasAccent:
        return theme.textStyles.onCanvasAccent;
    }
  }
}
