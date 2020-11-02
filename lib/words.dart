import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Word {
  const Word(
    this.hashtag,
    this.color,
    this.size,
    this.rotated,
  );
  final String hashtag;
  final Color color;
  final int size;
  final bool rotated;
}

class FlutterColors {
  const FlutterColors._();

  static const Color yellow = Color(0xFFFFC108);

  static const Color white = Color(0xFFFFFFFF);

  static const Color blue400 = Color(0xFF13B9FD);
  static const Color blue600 = Color(0xFF0175C2);
  static const Color blue = Color(0xFF02569B);

  static const Color gray100 = Color(0xFFD5D7DA);
  static const Color gray600 = Color(0xFF60646B);
  static const Color gray = Color(0xFF202124);
  static const Color green = Colors.green;
}

const List<Word> kWords = const <Word>[
  Word('One', Colors.green, 60, false),
  Word('Two', FlutterColors.gray600, 24, false),
  Word('three', FlutterColors.blue600, 12, false),
  Word('four', FlutterColors.gray, 14, false),
  Word('five', FlutterColors.blue400, 16, false),
  Word('six', FlutterColors.blue600, 12, false),
  Word('Seven', FlutterColors.gray600, 20, false),
  Word('Eight', FlutterColors.blue, 36, false),
  Word('Nine', FlutterColors.blue400, 40, false),
  Word('ten', FlutterColors.gray, 32, false),
  Word('Eleven', FlutterColors.gray, 12, false),
  Word('Twelve', FlutterColors.gray600, 14, false),
  Word('thirteen', FlutterColors.blue600, 16, false),
  Word('Fourteen', FlutterColors.blue600, 20, false),
  Word('Fifteen', FlutterColors.blue, 22, false),
  Word('sixteen', FlutterColors.gray, 30, false),
  Word('Seventeen', FlutterColors.yellow, 44, false),
  Word('Eighteen', FlutterColors.blue400, 30, false),
  Word('nineteen', FlutterColors.gray, 12, false),
  Word('twenty', FlutterColors.blue600, 20, false),
  Word('twenty-one', FlutterColors.gray600, 32, false),
  Word('twenty-two', FlutterColors.blue600, 34, false),
  Word('gray', FlutterColors.gray, 12, false),
  Word('gray', FlutterColors.gray, 20, false),
  Word('yellow', FlutterColors.yellow, 44, false),
  Word('blue', FlutterColors.blue, 32, false),
  Word('blue', FlutterColors.blue, 40, false),
  Word('lightblue', FlutterColors.blue400, 32, false),
  Word('blue', FlutterColors.blue, 20, false),
  Word('gray', FlutterColors.gray, 24, false),
  Word('lorem', FlutterColors.blue, 26, false),
  Word('ipsum', FlutterColors.blue600, 28, false),
  Word('dolum', FlutterColors.gray, 36, false),
  Word('bueno', FlutterColors.blue, 36, false),
  Word('Dolce Vita', Colors.teal, 40, false),
  Word('hello', FlutterColors.blue, 36, false),
  Word('app', FlutterColors.blue400, 20, false),
  Word('bye', FlutterColors.blue, 12, false),
  Word('play', FlutterColors.blue, 14, false),
  Word('fun', FlutterColors.blue, 20, false),
];
