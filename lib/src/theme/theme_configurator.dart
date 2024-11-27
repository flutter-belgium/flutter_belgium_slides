import 'package:flutter/widgets.dart';
import 'package:flutter_belgium_slides/src/theme/theme.dart';

class FlutterBelgiumSlidesThemeConfigurator extends InheritedWidget {
  final FlutterBelgiumSlidesTheme theme;

  const FlutterBelgiumSlidesThemeConfigurator({
    required this.theme,
    required super.child,
    super.key,
  });

  static FlutterBelgiumSlidesThemeConfigurator of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<FlutterBelgiumSlidesThemeConfigurator>()!;

  @override
  bool updateShouldNotify(covariant FlutterBelgiumSlidesThemeConfigurator oldWidget) => theme != oldWidget.theme;
}
