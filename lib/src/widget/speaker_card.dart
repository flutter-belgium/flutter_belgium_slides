import 'package:flutter/material.dart';
import 'package:flutter_belgium_slides/src/model/speaker.dart';
import 'package:flutter_belgium_slides/src/theme/theme.dart';
import 'package:flutter_belgium_slides/src/widget/general/cirlce_image.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

class FlutterBelgiumSpeakerCard extends StatelessWidget {
  final FlutterBelgiumSpeaker speaker;
  const FlutterBelgiumSpeakerCard({
    required this.speaker,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FlutterBelgiumSlidesTheme.of(context);
    return ImpaktfullUiAutoLayout.horizontal(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 32,
      children: [
        CircleImage(
          imageUrl: speaker.profilePictureUrl,
        ),
        Expanded(
          child: ImpaktfullUiAutoLayout.vertical(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                speaker.talkTitle,
                style: theme.textStyles.onCanvasSecondary.smallTitle.copyWith(
                  color: Colors.black,
                  fontSize: 48,
                ),
              ),
              Text(
                speaker.name,
                style: theme.textStyles.onCanvasSecondary.body.copyWith(
                  fontSize: 32,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
