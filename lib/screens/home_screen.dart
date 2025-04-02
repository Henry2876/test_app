import 'package:flutter/material.dart';
import 'package:test_app/utils/routes_constants.dart';
import 'package:test_app/utils/sizes.dart';
import 'package:test_app/widgets/app_button.dart';
import '../utils/translations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(homeScreenName),
        centerTitle: true,
      ),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton(
                  onPress: () => Navigator.pushNamed(context, routFirstScreen),
                  title: getScreenTitle(1)),
              const SizedBox(height: size_5),
              AppButton(
                  onPress: () => Navigator.pushNamed(context, routSecondScreen),
                  title: getScreenTitle(2)),
              const SizedBox(height: size_5),
              AppButton(
                  onPress: () => Navigator.pushNamed(context, routThirdScreen),
                  title: getScreenTitle(3)),
              const SizedBox(height: size_5),
              AppButton(
                  onPress: () => Navigator.pushNamed(context, routEndScreen),
                  title: endScreenName),
              const SizedBox(height: size_5),
            ],
          ),
        ),
      ),
    );
  }
}
