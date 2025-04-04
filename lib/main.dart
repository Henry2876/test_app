import 'package:flutter/material.dart';
import 'package:test_app/screens/home_screen.dart';
import 'package:test_app/screens/hidden_screen.dart';
import 'package:test_app/screens/presence_screen.dart';
import 'package:test_app/screens/opacity_screen.dart';
import 'package:test_app/screens/end_screen.dart';
import 'package:test_app/utils/routes_constants.dart';
import '../utils/translations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: addTitle,
      home: const HomeScreen(),
      routes: {
        routFirstScreen: (context) => const HiddenScreen(),
        routSecondScreen: (context) => const RestoreScreen(),
        routThirdScreen: (context) => const OpacityScreen(),
        routEndScreen: (context) => const EndScreen(),
      },
    );
  }
}
