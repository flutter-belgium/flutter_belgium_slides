import 'package:flutter/material.dart';
import 'package:flutter_belgium_slides/src/slides/default_slide.dart';
import 'package:flutter_belgium_slides/src/slides/slide.dart';
import 'package:flutter_belgium_slides/src/theme/theme.dart';
import 'package:flutter_belgium_slides/src/widget/title.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

class FlutterBelgiumLogoSlide extends FlutterBelgiumSlide {
  final String title;

  const FlutterBelgiumLogoSlide({
    required this.title,
    super.skip,
  });

  @override
  Widget buildSlide(BuildContext context, FlutterBelgiumSlidesTheme theme) {
    return FlutterBelgiumDefaultSlide(
      iconAlignment: AlignmentDirectional.centerEnd,
      background: theme.assets.images.background,
      showBottomLogo: false,
      child: Stack(
        children: [
          Positioned.fill(
            child: ImpaktfullUiAutoLayout.vertical(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                ImpaktfullUiAssetWidget(
                  asset: theme.assets.images.fullLogo,
                  fit: BoxFit.fill,
                ),
                Expanded(
                  child: ImpaktfullUiAutoLayout.vertical(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FlutterBelgiumSlidesTitle(
                        title: title,
                        type: FlutterBelgiumSlidesTitleType.largeTitle,
                        styleType: FlutterBelgiumSlidesTitleStyleType.onCanvasSecondary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 24,
            right: 24,
            child: Opacity(
              opacity: 0.8,
              child: ImpaktfullUiAutoLayout.vertical(
                crossAxisAlignment: CrossAxisAlignment.end,
                spacing: 8,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 45),
                    child: ImpaktfullUiAssetWidget(
                      asset: theme.assets.images.joinUs,
                      width: 100,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: ImpaktfullUiAssetWidget(
                      asset: theme.assets.images.qrCodeWebsite,
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
