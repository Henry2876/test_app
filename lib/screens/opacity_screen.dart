import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/style/button_style.dart';
import 'package:test_app/widgets/app_button.dart';
import '../function/opacity_screen_fun.dart';
import '../utils/enum_files.dart';
import '../utils/image_urls.dart';
import '../utils/translations.dart';
import '../utils/sizes.dart';

class OpacityScreen extends StatefulWidget {
  const OpacityScreen({super.key});

  @override
  OpacityScreenState createState() => OpacityScreenState();
}

class OpacityScreenState extends State<OpacityScreen> {
  double _isImageOpacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getScreenTitle(3)),
        centerTitle: true,
      ),
      body: Center(
        child: Opacity(
          opacity: _isImageOpacity,
          child: Image.network(manNarrowEyes),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(size_16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AppButton(
                style: minimalismBlueLight,
                onPress: () {
                  setState(() {
                    _isImageOpacity = calculateOpacity(
                        action: OpacityAction.decriment,
                        correctOpacity: _isImageOpacity);
                  });
                },
                title: firstNameOpacityButton,
                icon: const Icon(CupertinoIcons.lightbulb),
              ),
            ),
            const SizedBox(width: size_16),
            Expanded(
              child: AppButton(
                style: minimalismBlueSaturated,
                onPress: () {
                  setState(() {
                    _isImageOpacity = calculateOpacity(
                        action: OpacityAction.increment,
                        correctOpacity: _isImageOpacity);
                  });
                },
                title: secondNameOpacityButton,
                icon: const Icon(CupertinoIcons.lightbulb_fill),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
