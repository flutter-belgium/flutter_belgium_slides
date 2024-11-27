import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class NoCorsImage extends StatelessWidget {
  final String? url;
  final BoxFit fit;
  final double? width;
  final double? height;
  const NoCorsImage({
    super.key,
    required this.url,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    if (url == null) {
      return const SizedBox.shrink();
    }
    final correctUrl = kIsWeb ? "https://corsproxy.io/?${Uri.encodeComponent(url!)}" : url;
    return Image.network(
      correctUrl!,
      fit: fit,
      width: width,
      height: height,
    );
  }
}
