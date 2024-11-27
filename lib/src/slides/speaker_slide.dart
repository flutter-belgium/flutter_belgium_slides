import 'package:flutter/material.dart';
import 'package:flutter_belgium_slides/src/model/speaker.dart';
import 'package:flutter_belgium_slides/src/slides/default_slide.dart';
import 'package:flutter_belgium_slides/src/slides/slide.dart';
import 'package:flutter_belgium_slides/src/theme/theme.dart';
import 'package:flutter_belgium_slides/src/widget/speaker_card.dart';
import 'package:flutter_belgium_slides/src/widget/title.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

class FlutterBelgiumSpeakerSlide extends FlutterBelgiumSlide {
  final String title;
  final List<FlutterBelgiumSpeaker> speakers;

  const FlutterBelgiumSpeakerSlide({
    required this.title,
    required this.speakers,
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
          FlutterBelgiumSlidesTitle(
            title: title,
            type: FlutterBelgiumSlidesTitleType.largeTitle,
            styleType: FlutterBelgiumSlidesTitleStyleType.onCanvasSecondary,
            dense: true,
          ),
          for (final speaker in speakers) ...[
            Expanded(
              child: FlutterBelgiumSpeakerCard(
                speaker: speaker,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
