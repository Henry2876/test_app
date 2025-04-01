import 'package:flutter/cupertino.dart';
import '../utils/image_urls.dart';

class OpacityFun extends StatelessWidget {
  final double isOpacity;

  const OpacityFun({
    required this.isOpacity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child:
            Opacity(opacity: isOpacity, child: Image.network(manNarrowEyes)));
  }
}

double calculateOpacity({
  required double correctOpacity,
  required OpacityAction action,
}) {
  const double maxOpacity = 1.0;
  const double minOpacity = 0.1;
  const double step = 0.1;

  if (action == OpacityAction.decriment) {
    return (correctOpacity - step).clamp(minOpacity, maxOpacity);
  }

  if (action == OpacityAction.increment) {
    return (correctOpacity + step).clamp(minOpacity, maxOpacity);
  }

  return correctOpacity;
}

enum OpacityAction {
  increment,
  decriment,
}
