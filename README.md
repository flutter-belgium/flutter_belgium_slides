# flutter_belgium_slides

A flutter package for creating beautiful slides for presentations with the Flutter Belgium brand

[![test](https://github.com/flutter-belgium/flutter_belgium_slides/actions/workflows/test.yaml/badge.svg)](https://github.com/flutter-belgium/flutter_belgium_slides/actions/workflows/test.yaml/badge.svg)
[![publish to github pages](https://github.com/flutter-belgium/flutter_belgium_slides/actions/workflows/publish_to_githubpages.yaml/badge.svg)](https://github.com/flutter-belgium/flutter_belgium_slides/actions/workflows/publish_to_githubpages.yaml/badge.svg)
[![slides](https://img.shields.io/badge/Slides-Available-7D64F2)](https://slides.flutterbelgium.be/)

## Demo

[Slides](https://slides.flutterbelgium.be/)

## Supported slides

- FlutterBelgiumBulletsSlide
- FlutterBelgiumImagesSlide
- FlutterBelgiumTitleCardSlide
- FlutterBelgiumTitleSlide

## Minimal example

```dart
import 'package:flutter/widgets.dart';
import 'package:flutter_belgium_slides/flutter_belgium_slides.dart';

void main() {
  FlutterBelgiumSlides.initialize();
  runApp(const FlutterBelgiumSlidesApp());
}

class FlutterBelgiumSlidesApp extends StatelessWidget {
  const FlutterBelgiumSlidesApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterBelgiumSlidesDeck(
      title: 'Flutter Belgium Slides example presentation',
      slides: (context, theme) => [
        const FlutterBelgiumTitleSlide(
          title: 'Flutter Belgium example',
        ),
      ],
    );
  }
}

```

### Fonts

Add custom fonts to the `pubspec.yaml` file.

```yaml
flutter:
  #...
  fonts:
    - family: Ubuntu
      fonts:
        - asset: packages/flutter_belgium_slides/fonts/ubuntu/ubuntu_light.ttf
          weight: 300
        - asset: packages/flutter_belgium_slides/fonts/ubuntu/ubuntu_regular.ttf
        - asset: packages/flutter_belgium_slides/fonts/ubuntu/ubuntu_medium.ttf
          weight: 500
        - asset: packages/flutter_belgium_slides/fonts/ubuntu/ubuntu_medium.ttf
          weight: 600
        - asset: packages/flutter_belgium_slides/fonts/ubuntu/ubuntu_bold.ttf
          weight: 700
    - family: Geologica
      fonts:
        - asset: packages/flutter_belgium_slides/fonts/geologica/geologica_light.ttf
          weight: 300
        - asset: packages/flutter_belgium_slides/fonts/geologica/geologica_regular.ttf
        - asset: packages/flutter_belgium_slides/fonts/geologica/geologica_medium.ttf
          weight: 500
        - asset: packages/flutter_belgium_slides/fonts/geologica/geologica_semibold.ttf
          weight: 600
        - asset: packages/flutter_belgium_slides/fonts/geologica/geologica_bold.ttf
          weight: 700
```
