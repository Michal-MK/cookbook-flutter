import 'package:cookbook/themes/dark_theme.dart';
import 'package:cookbook/themes/light_theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  static ThemeProvider? _instance;

  static ThemeProvider get instance {
    _instance ??= ThemeProvider();
    return _instance!;
  }

  late bool isLightTheme;

  void setTheme(bool lightTheme) {
    if (lightTheme) {
      isLightTheme = true;
      LightTheme.applyTheme();
    } else {
      isLightTheme = false;
      DarkTheme.applyTheme();
    }
    notifyListeners();
  }
}
