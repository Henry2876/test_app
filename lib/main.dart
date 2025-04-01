import 'package:flutter/material.dart';
import 'package:test_app/screens/home_screen.dart';
import 'package:test_app/screens/hidden_screen.dart';
import 'package:test_app/screens/presence_screen.dart';
import 'package:test_app/screens/opacity_screen.dart';
import 'package:test_app/screens/end_screen.dart';
import '../utils/translations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // оставить только это +
  // пройтись по всему коду проставить запятые и отформатировать
  //вынести переводы в файлик с локализацией
  //Разнести все по отдельным файлам (1 файл 1 скрин + отрефакторить названия) +
  // Вынести все стили в отлельный файл
  // ВЫНЕСТИ ОТДЕЛЬНО РАЗМЕРЫ  в класс +

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: addTitle,
      home: const HomeScreen(),
      routes: {
        '/logic1': (context) => const HiddenScreen(),
        '/logic2': (context) => const RestoreScreen(),
        '/logic3': (context) => const OpacityScreen(),
        '/final': (context) => const EndScreen(),
      },
    );
  }
}
