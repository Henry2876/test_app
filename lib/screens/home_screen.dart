import 'package:flutter/material.dart';
import 'package:test_app/widgets/home_button.dart';
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
              HomeButton(
                  onPress: () => Navigator.pushNamed(context, '/logic1'),
                  title: firstScreenName),
              HomeButton(
                  onPress: () => Navigator.pushNamed(context, '/logic2'),
                  title: secondScreenName),
              HomeButton(
                  onPress: () => Navigator.pushNamed(context, '/logic3'),
                  title: thirdScreenName),
              HomeButton(
                  onPress: () => Navigator.pushNamed(context, '/final'),
                  title: endScreenName),
            ],
          ),
        ),
      ),
    );
  }
}
