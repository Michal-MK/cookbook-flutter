import 'dart:io';

import 'package:cookbook/const/nav_constants.dart';
import 'package:cookbook/pages/home/homepage.dart';
import 'package:cookbook/pages/splash.dart';
import 'package:cookbook/persistence/sqlite.dart';
import 'package:cookbook/texts/localization_provider.dart';
import 'package:cookbook/themes/colors.dart';
import 'package:cookbook/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  if (Platform.isWindows) {
    sqfliteFfiInit();
  }
  runApp(const CookBookApp());
}

class CookBookApp extends StatelessWidget {
  const CookBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: LocalizationProvider.instance),
        ChangeNotifierProvider.value(value: ThemeProvider.instance),
        Provider.value(value: SQLite.instance),
      ],
      child: MaterialApp(
        title: 'Cookbook',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: CBColors.PrimaryColor),
          fontFamily: "Montserrat",
        ),
        home: const SplashScreen(),
        routes: {
          NavConstants.HOME: (ctx) => const CookbookHomePage(title: "Cookbook"),
        },
      ),
    );
  }
}
