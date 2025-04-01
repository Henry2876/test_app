import 'package:flutter/cupertino.dart';
import '../utils/image_urls.dart';

class Presence extends StatelessWidget {
  final bool isPresence;

  const Presence({
    required this.isPresence,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isPresence
          ? Image.network(
              manInGlassesLink,
            )
          : Container(),
    );
  }
}
