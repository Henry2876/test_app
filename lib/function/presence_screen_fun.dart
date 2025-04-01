import 'package:flutter/material.dart';
import '../utils/image_urls.dart';

Widget buildPresenceImageWidget({
  required bool presenceImage,
}) {
  return Center(
    child: presenceImage
        ? Image.network(
            manInGlassesLink,
          )
        : Container(),
  );
}
