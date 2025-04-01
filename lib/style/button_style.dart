import 'package:flutter/material.dart';
import 'package:test_app/utils/sizes.dart';

final ButtonStyle contrasTones = ElevatedButton.styleFrom(
  backgroundColor: const Color(0xEA002D95),
  foregroundColor: Colors.orange,
  iconColor: Colors.orange,
  padding: const EdgeInsets.all(size_4),
  textStyle: const TextStyle(
      color: Colors.orange, fontSize: size_14, fontWeight: FontWeight.w400),
);
final ButtonStyle naturalTones = ElevatedButton.styleFrom(
  backgroundColor: const Color(0xEAA4BF50),
  foregroundColor: const Color(0xEAF1C790),
  iconColor: const Color(0xEAF1C790),
  padding: const EdgeInsets.all(size_4),
  textStyle: const TextStyle(
      color: Color(0xEAF1C790), fontSize: size_14, fontWeight: FontWeight.w400),
);
final ButtonStyle minimalismBlack = ElevatedButton.styleFrom(
  backgroundColor: const Color(0xFF000000),
  foregroundColor: const Color(0xEAB8B8B8),
  iconColor: const Color(0xEAB8B8B8),
  padding: const EdgeInsets.all(size_4),
  textStyle: const TextStyle(
      color: Color(0xEAB8B8B8), fontSize: size_14, fontWeight: FontWeight.w400),
);
final ButtonStyle minimalismGreen = ElevatedButton.styleFrom(
  backgroundColor: const Color(0xFF22A802),
  foregroundColor: const Color(0xFF70FABA),
  iconColor: const Color(0xFF70FABA),
  padding: const EdgeInsets.all(size_4),
  textStyle: const TextStyle(
      color: Color(0xFF70FABA), fontSize: size_14, fontWeight: FontWeight.w400),
);
final ButtonStyle minimalismRed = ElevatedButton.styleFrom(
  backgroundColor: const Color(0xFFD10202),
  foregroundColor: const Color(0xEAF6B892),
  iconColor: const Color(0xEAF6B892),
  padding: const EdgeInsets.all(size_4),
  textStyle: const TextStyle(
      color: Color(0xEAF6B892), fontSize: size_14, fontWeight: FontWeight.w400),
);
final ButtonStyle minimalismYellow = ElevatedButton.styleFrom(
  backgroundColor: const Color(0xFFF0FF00),
  foregroundColor: const Color(0xEA914F0E),
  iconColor: const Color(0xEA914F0E),
  padding: const EdgeInsets.all(size_4),
  textStyle: const TextStyle(
      color: Color(0xEA914F0E), fontSize: size_14, fontWeight: FontWeight.w400),
);
final ButtonStyle minimalismBlueLight = ElevatedButton.styleFrom(
  backgroundColor: const Color(0x5F0036FF),
  foregroundColor: const Color(0x4AF7FF00),
  iconColor: const Color(0x4AF7FF00),
  padding: const EdgeInsets.all(size_4),
  textStyle: const TextStyle(
      color: Color(0x4AF7FF00), fontSize: size_14, fontWeight: FontWeight.w400),
);
final ButtonStyle minimalismBlueSaturated = ElevatedButton.styleFrom(
  backgroundColor: const Color(0xFF0036FF),
  foregroundColor: const Color(0xFFF7FF00),
  iconColor: const Color(0xFFF7FF00),
  padding: const EdgeInsets.all(size_4),
  textStyle: const TextStyle(
      color: Color(0xFFF7FF00), fontSize: size_14, fontWeight: FontWeight.w400),
);
