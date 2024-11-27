import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_belgium_slides/src/slides/slide.dart';
import 'package:flutter_belgium_slides/src/theme/theme.dart';
import 'package:flutter_belgium_slides/src/theme/theme_configurator.dart';
import 'package:flutter_belgium_slides/src/theme/theme_default.dart';
import 'package:flutter_belgium_slides/src/theme/ui_theme.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';
import 'package:slick_slides/slick_slides.dart';

class FlutterBelgiumSlidesDeck extends StatelessWidget {
  final String title;
  final List<FlutterBelgiumSlide> Function(BuildContext context, FlutterBelgiumSlidesTheme theme) slides;
  final FlutterBelgiumSlidesTheme? theme;

  const FlutterBelgiumSlidesDeck({
    required this.title,
    required this.slides,
    this.theme,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final slidesTheme = theme ?? FlutterBelgiumSlidesThemeDefaults.defaultTheme;
    final uiTheme = FlutterBelgiumSlidesUiThemeMapper.mapToUiTheme(slidesTheme);
    return ImpaktfullUiApp(
      title: title,
      impaktfullUiTheme: uiTheme,
      home: FlutterBelgiumSlidesThemeConfigurator(
        theme: slidesTheme,
        child: SlideDeck(
          slides: slides(context, slidesTheme)
              .where((slide) => !slide.skip)
              .map(
                (slide) => Slide(
                  builder: (context) => slide.buildSlide(context, slidesTheme),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
