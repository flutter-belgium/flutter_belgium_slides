import 'package:flutter/material.dart';
import 'package:flutter_belgium_slides/src/theme/theme.dart';
import 'package:flutter_belgium_slides/src/widget/graphic_elements/small_logo.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

class FlutterBelgiumDefaultSlide extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final ImpaktfullUiAsset? background;
  final AlignmentGeometry? iconAlignment;
  final FlutterBelgiumSlidesTheme? theme;
  final bool showBottomLogo;
  const FlutterBelgiumDefaultSlide({
    required this.child,
    this.background,
    this.padding = const EdgeInsets.all(24),
    this.iconAlignment = AlignmentDirectional.centerEnd,
    this.theme,
    this.showBottomLogo = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final theme = this.theme ?? FlutterBelgiumSlidesTheme.of(context);
    return ImpaktfullUiScreen(
      child: Stack(
        children: [
          if (background != null) ...[
            Positioned.fill(
              child: ImpaktfullUiAssetWidget(
                asset: background,
                fit: BoxFit.fill,
              ),
            ),
          ],
          Padding(
            padding: padding,
            child: ImpaktfullUiAutoLayout.vertical(
              spacing: 24,
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: child,
                  ),
                ),
                if (showBottomLogo && iconAlignment != null) ...[
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      bottom: padding == EdgeInsets.zero ? 24 : 0,
                      end: padding == EdgeInsets.zero ? 24 : 0,
                      start: padding == EdgeInsets.zero ? 24 : 0,
                    ),
                    child: Align(
                      alignment: iconAlignment!,
                      child: const FlutterBelgiumSlidesSmallLogo(),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
