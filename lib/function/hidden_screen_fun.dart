import 'package:flutter/cupertino.dart';
import '../utils/image_urls.dart';
import '../style/text_style.dart';

class Hidden extends StatelessWidget {
  final bool isHidden;

  const Hidden({
    required this.isHidden,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: isHidden
            ? Text(
                'Hidden',
                style: textRedBold_15,
              )
            : Image.network(manSurprised));
  }
}
