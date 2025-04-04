import 'package:flutter/material.dart';
import 'package:test_app/utils/image_urls.dart';
import '../utils/translations.dart';

class EndScreen extends StatelessWidget {
  const EndScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(endScreenName),
        centerTitle: true,
      ),
      body: Center(
        child: Image.network(manEnding),
      ),
    );
  }
}
