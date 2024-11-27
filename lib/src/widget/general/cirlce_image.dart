import 'package:flutter/material.dart';
import 'package:flutter_belgium_slides/src/widget/general/no_cors_image.dart';

class CircleImage extends StatelessWidget {
  final String imageUrl;
  final double size;
  const CircleImage({
    required this.imageUrl,
    this.size = 200,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      width: size,
      height: size,
      child: NoCorsImage(
        url: imageUrl,
      ),
    );
  }
}
