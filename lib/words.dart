import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Word {
  const Word(
    this.word,
    this.color,
    this.size,
    this.rotated,
  );
  final String word;
  final Color color;
  final int size;
  final bool rotated;
}
