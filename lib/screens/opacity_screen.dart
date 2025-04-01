import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/style/button_style.dart';
import 'package:test_app/widgets/opacity_button.dart';
import '../function/opacity_screen_fun.dart';
import '../utils/translations.dart';
import '../utils/sizes.dart';

class OpacityScreen extends StatefulWidget {
  const OpacityScreen({super.key});

  @override
  OpacityScreenState createState() => OpacityScreenState();
}

class OpacityScreenState extends State<OpacityScreen> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(thirdScreenName),
        centerTitle: true,
      ),
      body: OpacityFun(isOpacity: _opacity),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(size_16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: OpacityButton(
                style: minimalismBlueLight,
                onPress: () {
                  setState(() {
                    _opacity = calculateOpacity(
                        action: OpacityAction.decriment,
                        correctOpacity: _opacity);
                  });
                },
                title: 'Increase',
                icon: const Icon(CupertinoIcons.lightbulb),
              ),
            ),
            const SizedBox(width: size_16),
            Expanded(
              child: OpacityButton(
                style: minimalismBlueSaturated,
                onPress: () {
                  setState(() {
                    _opacity = calculateOpacity(
                        action: OpacityAction.increment,
                        correctOpacity: _opacity);
                  });
                },
                title: 'Decrease',
                icon: const Icon(CupertinoIcons.lightbulb_fill),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
