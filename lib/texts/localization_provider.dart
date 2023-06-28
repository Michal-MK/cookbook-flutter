import 'package:cookbook/const/preferences.dart';
import 'package:cookbook/texts/cs.dart';
import 'package:cookbook/texts/en.dart';
import 'package:cookbook/texts/texts.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalizationProvider extends ChangeNotifier {
  static LocalizationProvider? _instance;

  static LocalizationProvider get instance {
    _instance ??= LocalizationProvider();
    return _instance!;
  }

  Future init() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var locale = prefs.getString(PreferenceConstants.LOCALE) ?? "en";
    if (locale == "en") {
      l = EnText();
    } else {
      l = CsText();
    }
    notifyListeners();
  }

  void setLocale(String locale) async {
    if (locale != "en" && locale != "cs") {
      throw Exception("Locale $locale is not supported");
    }

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(PreferenceConstants.LOCALE, locale);
    if (locale == "en") {
      l = EnText();
    } else {
      l = CsText();
    }
    notifyListeners();
  }

  late CBTexts l;
}
