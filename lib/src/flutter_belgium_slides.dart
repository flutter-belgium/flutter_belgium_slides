import 'package:flutter/widgets.dart';
import 'package:slick_slides/slick_slides.dart';

class FlutterBelgiumSlides {
  const FlutterBelgiumSlides._();

  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SlickSlides.initialize();
  }
}
