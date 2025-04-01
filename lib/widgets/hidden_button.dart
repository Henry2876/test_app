import 'package:flutter/material.dart';
import '../utils/sizes.dart';
import '../style/button_style.dart';

class HiddenButton extends StatelessWidget {
  final Function onPress;
  final String title;
  final Icon? icon;
  final ButtonStyle? style;
  final TextStyle? textStyle;

  const HiddenButton({
    required this.onPress,
    required this.title,
    this.icon,
    this.textStyle,
    this.style,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPress();
      },
      style: style ?? contrasTones,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              textAlign: TextAlign.center,
              title,
            ),
          ),
          Row(
            children: icon != null
                ? [
                    const SizedBox(width: size_5),
                    icon!,
                  ]
                : [
                    const SizedBox.shrink(),
                  ],
          ),
        ],
      ),
    );
  }
}
