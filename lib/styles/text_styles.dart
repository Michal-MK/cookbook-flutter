import 'package:cookbook/fonts.dart';
import 'package:cookbook/themes/colors.dart';
import 'package:flutter/material.dart';

class CBTS {
  static TextStyle regular = TextStyle(fontFamily: Fonts.Regular, fontWeight: FontWeight.w400, color: CBColors.PrimaryLabelTextColor);
  static TextStyle medium = TextStyle(fontFamily: Fonts.Medium, fontWeight: FontWeight.w500, color: CBColors.PrimaryLabelTextColor);
  static TextStyle bold = TextStyle(fontFamily: Fonts.Bold, fontWeight: FontWeight.w700, color: CBColors.PrimaryLabelTextColor);
  static TextStyle fa = TextStyle(fontFamily: Fonts.FontAwesome, color: CBColors.PrimaryLabelTextColor);
}

extension TS on TextStyle {
  TextStyle get nav => copyWith(
        color: CBColors.NavigationBarTextColor,
      );

  TextStyle get form => copyWith(
        color: CBColors.FormEntryTextColor,
      );

  TextStyle get btn => copyWith(
        color: CBColors.PrimaryButtonTextColor,
      );

  TextStyle get primaryLabel => copyWith(
        color: CBColors.PrimaryLabelTextColor,
      );

  TextStyle get primary => copyWith(
        color: CBColors.PrimaryColor,
      );

  TextStyle s(double fontSize) {
    return copyWith(
      fontSize: fontSize,
    );
  }
}
