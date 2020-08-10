import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class FixDate {
  static const List<Color> mockColorList = [
    Color(0xFFFFCDD2),
    Color(0xFFC8E6C9),
    Color(0xFFFFF9C4),
    Color(0xFFE0E0E0),
    Color(0xFFB3E5FC),
    Color(0xFF9FA8DA)
  ];

  static Color randomColor() {
    return mockColorList[Random().nextInt(mockColorList.length)];
  }
}
