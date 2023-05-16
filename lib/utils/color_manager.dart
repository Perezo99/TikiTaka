import 'package:flutter/material.dart';

class ColorManager {
  static Color primaryColor = HexColor.fromHex('#240000');
  static Color redColor = HexColor.fromHex('#6b0202');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF' + hexColorString;
    }
    return Color(
      int.parse(hexColorString, radix: 16),
    );
  }
}
