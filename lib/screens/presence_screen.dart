import 'package:flutter/material.dart';
import 'package:test_app/style/button_style.dart';
import 'package:test_app/widgets/app_button.dart';
import '../utils/translations.dart';
import '../utils/sizes.dart';
import '../function/presence_screen_fun.dart';

class RestoreScreen extends StatefulWidget {
  const RestoreScreen({super.key});

  @override
  PresenceScreenState createState() => PresenceScreenState();
}

class PresenceScreenState extends State<RestoreScreen> {
  bool _isImagePresence = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getScreenTitle(2)),
        centerTitle: true,
      ),
      body: buildPresenceImageWidget(presenceImage: _isImagePresence),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(size_16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AppButton(
                style: minimalismGreen,
                title: firstNamePresenceButton,
                icon: const Icon(
                  Icons.restore,
                ),
                onPress: () {
                  setState(() {
                    _isImagePresence = true;
                  });
                },
              ),
            ),
            const SizedBox(width: size_16),
            Expanded(
              child: AppButton(
                style: minimalismRed,
                title: secondNamePresenceButton,
                icon: const Icon(
                  Icons.restore_from_trash,
                ),
                onPress: () {
                  setState(() {
                    _isImagePresence = false;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
