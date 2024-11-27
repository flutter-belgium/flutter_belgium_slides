import 'package:flutter/widgets.dart';
import 'package:flutter_belgium_slides/src/theme/theme_configurator.dart';
import 'package:flutter_belgium_slides/src/theme/theme_default.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

class FlutterBelgiumSlidesTheme {
  final FlutterBelgiumSlidesAssetsTheme assets;
  final FlutterBelgiumColorsTheme colors;
  final FlutterBelgiumDimensTheme dimens;
  final FlutterBelgiumTextStylesTheme textStyles;

  const FlutterBelgiumSlidesTheme({
    required this.assets,
    required this.colors,
    required this.dimens,
    required this.textStyles,
  });

  FlutterBelgiumSlidesTheme darkTheme() => FlutterBelgiumSlidesThemeDefaults.defaultTheme;

  static FlutterBelgiumSlidesTheme of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<FlutterBelgiumSlidesThemeConfigurator>()!.theme;
}

class FlutterBelgiumSlidesAssetsTheme {
  final FlutterBelgiumSlidesImageAssetsTheme images;

  const FlutterBelgiumSlidesAssetsTheme({
    required this.images,
  });
}

class FlutterBelgiumColorsTheme {
  final Color accent;
  final Color canvas;
  final Color canvasInverted;
  final Color card;
  final Color cardInverted;
  final Color text;
  final Color textInverted;
  final Color textAccent;
  final Color textSecondary;

  const FlutterBelgiumColorsTheme({
    required this.accent,
    required this.canvas,
    required this.canvasInverted,
    required this.card,
    required this.cardInverted,
    required this.text,
    required this.textInverted,
    required this.textAccent,
    required this.textSecondary,
  });
}

class FlutterBelgiumDimensTheme {
  final BorderRadiusGeometry borderRadius;

  const FlutterBelgiumDimensTheme({
    required this.borderRadius,
  });
}

class FlutterBelgiumSlidesImageAssetsTheme {
  final ImpaktfullUiAsset smallLogo;
  final ImpaktfullUiAsset fullLogo;
  final ImpaktfullUiAsset background;
  final ImpaktfullUiAsset bullet;
  final ImpaktfullUiAsset qrCodeWebsite;
  final ImpaktfullUiAsset qrCodeScan;
  final ImpaktfullUiAsset joinUs;
  final ImpaktfullUiAsset slack;
  final ImpaktfullUiAsset meetup;
  final ImpaktfullUiAsset linkedin;
  final ImpaktfullUiAsset instagram;
  final ImpaktfullUiAsset youtube;
  final FlutterBelgiumSlidesTeamImageAssetsTheme team;

  const FlutterBelgiumSlidesImageAssetsTheme({
    required this.bullet,
    required this.smallLogo,
    required this.fullLogo,
    required this.background,
    required this.team,
    required this.qrCodeWebsite,
    required this.qrCodeScan,
    required this.joinUs,
    required this.slack,
    required this.meetup,
    required this.linkedin,
    required this.instagram,
    required this.youtube,
  });
}

class FlutterBelgiumSlidesTeamImageAssetsTheme {
  final ImpaktfullUiAsset koen;
  final ImpaktfullUiAsset jens;
  final ImpaktfullUiAsset kris;

  const FlutterBelgiumSlidesTeamImageAssetsTheme({
    required this.koen,
    required this.jens,
    required this.kris,
  });
}

class FlutterBelgiumTextStylesTheme {
  final FlutterBelgiumSlidesTextStyleTheme onCanvas;
  final FlutterBelgiumSlidesTextStyleTheme onCanvasSecondary;
  final FlutterBelgiumSlidesTextStyleTheme onCard;
  final FlutterBelgiumSlidesTextStyleTheme onCardSecondary;
  final FlutterBelgiumSlidesTextStyleTheme onCanvasAccent;
  final FlutterBelgiumSlidesTextStyleTheme onCardAccent;
  final FlutterBelgiumSlidesTextStyleTheme onInvertedCanvas;
  final FlutterBelgiumSlidesTextStyleTheme onInvertedCard;

  const FlutterBelgiumTextStylesTheme({
    required this.onCanvas,
    required this.onCanvasSecondary,
    required this.onCard,
    required this.onCardSecondary,
    required this.onCanvasAccent,
    required this.onCardAccent,
    required this.onInvertedCanvas,
    required this.onInvertedCard,
  });
}

class FlutterBelgiumSlidesTextStyleTheme {
  final TextStyle superLargeTitle;
  final TextStyle extraLargeTitle;
  final TextStyle largeTitle;
  final TextStyle title;
  final TextStyle smallTitle;
  final TextStyle body;
  final TextStyle footer;

  const FlutterBelgiumSlidesTextStyleTheme({
    required this.superLargeTitle,
    required this.extraLargeTitle,
    required this.largeTitle,
    required this.title,
    required this.smallTitle,
    required this.body,
    required this.footer,
  });

  static FlutterBelgiumSlidesTextStyleTheme create(Color color, String fontFamily) =>
      FlutterBelgiumSlidesTextStyleTheme(
        superLargeTitle: TextStyle(
          color: color,
          fontSize: 200,
          fontWeight: FontWeight.bold,
          fontFamily: fontFamily,
        ),
        extraLargeTitle: TextStyle(
          color: color,
          fontSize: 128,
          fontWeight: FontWeight.bold,
          fontFamily: fontFamily,
        ),
        largeTitle: TextStyle(
          color: color,
          fontSize: 80,
          fontWeight: FontWeight.bold,
          fontFamily: fontFamily,
        ),
        title: TextStyle(
          color: color,
          fontSize: 64,
          fontWeight: FontWeight.bold,
          fontFamily: fontFamily,
        ),
        smallTitle: TextStyle(
          color: color,
          fontSize: 48,
          fontWeight: FontWeight.bold,
          fontFamily: fontFamily,
        ),
        body: TextStyle(
          color: color,
          fontSize: 40,
          fontWeight: FontWeight.normal,
          fontFamily: fontFamily,
        ),
        footer: TextStyle(
          color: color,
          fontSize: 32,
          fontWeight: FontWeight.normal,
          fontFamily: fontFamily,
        ),
      );
}
