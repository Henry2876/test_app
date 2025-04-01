import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/function/hidden_screen_fun.dart';
import '../utils/translations.dart';
import '../utils/sizes.dart';
import '../widgets/hidden_button.dart';
import '../style/button_style.dart';

class HiddenScreen extends StatefulWidget {
  const HiddenScreen({super.key});

  @override
  HiddenScreenState createState() => HiddenScreenState();
}

class HiddenScreenState extends State<HiddenScreen> {
  bool _isHidden = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(firstScreenName),
        centerTitle: true,
      ),
      body: Hidden(isHidden: _isHidden),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(size_16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: HiddenButton(
                style: minimalismYellow,
                onPress: () {
                  setState(() {
                    _isHidden = true;
                  });
                },
                title: 'Hidden',
                icon: const Icon(CupertinoIcons.hand_point_left),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: HiddenButton(
                style: naturalTones,
                onPress: () {
                  setState(() {
                    _isHidden = false;
                  });
                },
                title: 'Show',
                icon: const Icon(CupertinoIcons.hand_point_left_fill),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
