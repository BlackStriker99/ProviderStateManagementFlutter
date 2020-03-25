import 'package:flutter/material.dart';

class UI extends ChangeNotifier {
  double _fontSize = 10;
  Color _color = Colors.purple;

  set fontSize(double newValue) {
    _fontSize = newValue;
    notifyListeners();
  }

  set color(Color value) {
    _color = value;
  }

  double get fontSize => _fontSize;
  double get sliderFontSize => _fontSize;
  Color get themeColor => _color;
}
