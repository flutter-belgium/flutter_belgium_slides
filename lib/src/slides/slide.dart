import 'package:flutter/widgets.dart';
import 'package:flutter_belgium_slides/flutter_belgium_slides.dart';

abstract class FlutterBelgiumSlide {
  final bool skip;
  const FlutterBelgiumSlide({
    this.skip = false,
  });

  Widget buildSlide(BuildContext context, FlutterBelgiumSlidesTheme theme);
}
