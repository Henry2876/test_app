import 'package:flutter/material.dart';
import 'package:test_app/utils/sizes.dart';
import 'package:test_app/style/button_style.dart';

class HomeButton extends StatelessWidget {
  final Function onPress;
  final String title;

  const HomeButton({
    required this.onPress,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            onPress();
          },
          style: contrasTones,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(width: size_5),
              const Icon(Icons.screenshot_outlined)
            ],
          ),
        ),
        const SizedBox(
          height: size_5,
        )
      ],
    );
  }
}
