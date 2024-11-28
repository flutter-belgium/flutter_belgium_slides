import 'package:flutter/material.dart';
import 'package:flutter_belgium_slides/src/slides/default_slide.dart';
import 'package:flutter_belgium_slides/src/slides/slide.dart';
import 'package:flutter_belgium_slides/src/theme/theme.dart';
import 'package:flutter_belgium_slides/src/widget/general/cirlce_image.dart';
import 'package:flutter_belgium_slides/src/widget/title.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

class FlutterBelgiumCircleImageSlide extends FlutterBelgiumSlide {
  final String? title;
  final ImpaktfullUiAsset? imageAsset;
  final String? imageUrl;
  final double imageSize;
  final String? subtitle;
  final String? extraText;

  const FlutterBelgiumCircleImageSlide({
    this.imageAsset,
    this.imageUrl,
    this.title,
    this.subtitle,
    this.extraText,
    this.imageSize = 300,
    super.skip,
  });

  @override
  Widget buildSlide(BuildContext context, FlutterBelgiumSlidesTheme theme) {
    return FlutterBelgiumDefaultSlide(
      iconAlignment: AlignmentDirectional.center,
      background: theme.assets.images.background,
      padding: const EdgeInsets.symmetric(
        horizontal: 128,
        vertical: 48,
      ),
      child: ImpaktfullUiAutoLayout.vertical(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (title != null) ...[
            FlutterBelgiumSlidesTitle(
              title: title!,
              type: FlutterBelgiumSlidesTitleType.largeTitle,
              styleType: FlutterBelgiumSlidesTitleStyleType.onCanvas,
              dense: true,
            ),
            const Spacer(),
          ] else ...[
            const Spacer(),
          ],
          if (imageUrl != null) ...[
            CircleImage(
              imageUrl: imageUrl!,
              size: 300,
            ),
            const Spacer(),
          ],
          if (imageAsset != null) ...[
            CircleImage.asset(
              asset: imageAsset!,
              size: 300,
            ),
            const Spacer(),
          ],
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1200,
            ),
            child: ImpaktfullUiAutoLayout.vertical(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 32,
              children: [
                if (subtitle != null) ...[
                  Text(
                    subtitle ?? '',
                    style: theme.textStyles.onCanvas.body,
                    textAlign: TextAlign.center,
                  ),
                ],
                if (extraText != null) ...[
                  Text(
                    extraText ?? '',
                    style: theme.textStyles.onCanvasSecondary.body,
                    textAlign: TextAlign.center,
                  ),
                ],
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
