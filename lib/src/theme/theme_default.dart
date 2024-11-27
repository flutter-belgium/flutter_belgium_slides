import 'package:flutter/material.dart';
import 'package:flutter_belgium_slides/src/theme/theme.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

class FlutterBelgiumSlidesThemeDefaults {
  static FlutterBelgiumSlidesTheme get defaultTheme {
    const fontFamily = 'Ubuntu';
    const package = 'flutter_belgium_slides';

    const assets = FlutterBelgiumSlidesAssetsTheme(
      images: FlutterBelgiumSlidesImageAssetsTheme(
        bullet: ImpaktfullUiAsset.svg(
          'bullet.svg',
          directory: 'assets/images',
          package: package,
        ),
        fullLogo: ImpaktfullUiAsset.svg(
          'full_logo.svg',
          directory: 'assets/images',
          package: package,
        ),
        smallLogo: ImpaktfullUiAsset.svg(
          'small_logo.svg',
          directory: 'assets/images',
          package: package,
        ),
        background: ImpaktfullUiAsset.svg(
          'background.svg',
          directory: 'assets/images',
          package: package,
        ),
        qrCodeWebsite: ImpaktfullUiAsset.svg(
          'qr_code_website.svg',
          directory: 'assets/images',
          package: package,
        ),
        qrCodeScan: ImpaktfullUiAsset.svg(
          'qr_code_scan.svg',
          directory: 'assets/images',
          package: package,
        ),
        joinUs: ImpaktfullUiAsset.svg(
          'join_us.svg',
          directory: 'assets/images',
          package: package,
        ),
        slack: ImpaktfullUiAsset.svg(
          'slack.svg',
          directory: 'assets/images/socials',
          package: package,
        ),
        meetup: ImpaktfullUiAsset.svg(
          'meetup.svg',
          directory: 'assets/images/socials',
          package: package,
        ),
        linkedin: ImpaktfullUiAsset.svg(
          'linkedin.svg',
          directory: 'assets/images/socials',
          package: package,
        ),
        instagram: ImpaktfullUiAsset.svg(
          'instagram.svg',
          directory: 'assets/images/socials',
          package: package,
        ),
        youtube: ImpaktfullUiAsset.svg(
          'youtube.svg',
          directory: 'assets/images/socials',
          package: package,
        ),
        team: FlutterBelgiumSlidesTeamImageAssetsTheme(
          koen: ImpaktfullUiAsset.pixel(
            'koen.png',
            directory: 'assets/images/team',
            package: package,
          ),
          jens: ImpaktfullUiAsset.pixel(
            'jens.jpeg',
            directory: 'assets/images/team',
            package: package,
          ),
          kris: ImpaktfullUiAsset.pixel(
            'kris.png',
            directory: 'assets/images/team',
            package: package,
          ),
        ),
      ),
    );
    const colors = FlutterBelgiumColorsTheme(
      accent: Color(0xFF7d64f2),
      canvas: Color(0xFF000000),
      canvasInverted: Color(0xFF000000),
      card: Color(0xFF1A1A1A),
      cardInverted: Color(0xFFE5E5E5),
      text: Color(0xFFFFFFFF),
      textSecondary: Color(0xFFA6A6A6),
      textInverted: Color(0xFF000000),
      textAccent: Color(0xFF000000),
    );
    final dimens = FlutterBelgiumDimensTheme(
      borderRadius: BorderRadius.circular(16),
    );
    final textStyles = FlutterBelgiumTextStylesTheme(
      onCanvas: FlutterBelgiumSlidesTextStyleTheme.create(colors.text, fontFamily),
      onCanvasSecondary: FlutterBelgiumSlidesTextStyleTheme.create(colors.textSecondary, fontFamily),
      onCard: FlutterBelgiumSlidesTextStyleTheme.create(colors.text, fontFamily),
      onCardSecondary: FlutterBelgiumSlidesTextStyleTheme.create(colors.textSecondary, fontFamily),
      onCanvasAccent: FlutterBelgiumSlidesTextStyleTheme.create(colors.textAccent, fontFamily),
      onCardAccent: FlutterBelgiumSlidesTextStyleTheme.create(colors.textAccent, fontFamily),
      onInvertedCanvas: FlutterBelgiumSlidesTextStyleTheme.create(colors.textInverted, fontFamily),
      onInvertedCard: FlutterBelgiumSlidesTextStyleTheme.create(colors.textInverted, fontFamily),
    );
    return FlutterBelgiumSlidesTheme(
      assets: assets,
      colors: colors,
      dimens: dimens,
      textStyles: textStyles,
    );
  }
}
