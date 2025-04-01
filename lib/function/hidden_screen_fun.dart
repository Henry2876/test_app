import 'package:flutter/material.dart';
import 'package:test_app/utils/translations.dart';
import '../utils/image_urls.dart';
import '../style/text_style.dart';

Widget buildHiddenImageWidget({
  required bool hiddenImage,
}) {
  return Center(
    child: hiddenImage
        ? const Text(
            titleBodyScreenHidden,
            style: textRedBold_15,
          )
        : Image.network(manSurprised),
  );
}
