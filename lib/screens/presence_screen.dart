import 'package:flutter/material.dart';
import 'package:test_app/style/button_style.dart';
import 'package:test_app/widgets/presence_button.dart';
import '../utils/translations.dart';
import '../utils/sizes.dart';
import '../function/presence_screen_fun.dart';

class RestoreScreen extends StatefulWidget {
  const RestoreScreen({super.key});

  @override
  PresenceScreenState createState() => PresenceScreenState();
}

class PresenceScreenState extends State<RestoreScreen> {
  bool isPresence = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(secondScreenName),
        centerTitle: true,
      ),
      body: Presence(isPresence: isPresence),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(size_16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: PresenceButton(
                style: minimalismGreen,
                title: 'Restore',
                icon: const Icon(
                  Icons.restore,
                ),
                onPress: () {
                  setState(() {
                    isPresence = true;
                  });
                },
              ),
            ),
            const SizedBox(width: size_16),
            Expanded(
              child: PresenceButton(
                style: minimalismRed,
                title: 'Delete',
                icon: const Icon(
                  Icons.restore_from_trash,
                ),
                onPress: () {
                  setState(() {
                    isPresence = false;
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
