import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/function/hidden_screen_fun.dart';
import '../utils/translations.dart';
import '../utils/sizes.dart';
import '../widgets/app_button.dart';
import '../style/button_style.dart';

class HiddenScreen extends StatefulWidget {
  const HiddenScreen({super.key});

  @override
  HiddenScreenState createState() => HiddenScreenState();
}

class HiddenScreenState extends State<HiddenScreen> {
  bool _isImageHidden = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getScreenTitle(1)),
        centerTitle: true,
      ),
      body: buildHiddenImageWidget(hiddenImage: _isImageHidden),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(size_16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AppButton(
                style: minimalismYellow,
                onPress: () {
                  setState(() {
                    _isImageHidden = true;
                  });
                },
                title: firstNameHiddenButton,
                icon: const Icon(CupertinoIcons.hand_point_left),
              ),
            ),
            const SizedBox(width: size_16),
            Expanded(
              child: AppButton(
                style: naturalTones,
                onPress: () {
                  setState(() {
                    _isImageHidden = false;
                  });
                },
                title: secondNameHiddenButton,
                icon: const Icon(CupertinoIcons.hand_point_left_fill),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
