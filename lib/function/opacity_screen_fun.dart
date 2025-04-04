import '../utils/enum_files.dart';

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
