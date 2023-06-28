import 'package:cookbook/const/nav_constants.dart';
import 'package:cookbook/const/preferences.dart';
import 'package:cookbook/persistence/sqlite.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:cookbook/themes/colors.dart';
import 'package:cookbook/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    setup();
    super.initState();
  }

  Future setup() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var isLightTheme = prefs.getBool(PreferenceConstants.IS_LIGHT_THEME) ?? true;
    var locale = prefs.getString(PreferenceConstants.LOCALE) ?? "en";

    LocalizationProvider.instance.setLocale(locale);
    ThemeProvider.instance.setTheme(isLightTheme);

    await SQLite.instance.init();

    await Future.delayed(const Duration(milliseconds: 400)); // Flutter is too fast for splash screens
    await Navigator.pushReplacementNamed(context, NavConstants.HOME);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CBColors.PrimaryColor,
      child: Center(
        child: Image.asset("assets/img/splashscreen.png", width: MediaQuery.of(context).size.width * 0.50),
      ),
    );
  }
}
