// ignore_for_file: non_constant_identifier_names

import 'dart:ui';

import 'package:cookbook/themes/colors.dart';

class DarkTheme {
  static Color PrimaryColor = const Color(0xFF00AE4B);
  static Color UnselectedColor = const Color(0xFF888888);
  static Color BackgroundColor = const Color(0xFF000000);
  static Color NavigationBarBackgroundColor = const Color(0xFF3A3A3A);
  static Color NavigationBarTextColor = const Color(0xFFFFFFFF);
  static Color PrimaryLabelTextColor = const Color(0xFFFFFFFF);
  static Color ListItemBackgroundColor = const Color(0xFF3A3A3A);
  static Color PrimaryButtonTextColor = const Color(0xFFFFFFFF);
  static Color DessertFoodTypeColor = const Color(0xFFF868AB);
  static Color MainDishFoodTypeColor = const Color(0xFF00AE4B);
  static Color SoupFoodTypeColor = const Color(0xFFED7500);
  static Color UnknownFoodTypeColor = const Color(0xFFF8F8F8);
  static Color ImageBorderColor = const Color(0xFF707070);
  static Color FormFrameBackgroundColor = const Color(0xFF1E1E1E);
  static Color FormEntryTextColor = const Color(0xFF000000);
  static Color FormEntryBackgroundColor = const Color(0xFFF8F8F8);
  static Color FormEntryBorderColor = const Color(0xFFE4E4E4);
  static Color ErrorColor = const Color(0xFFFF0000);

  static Color Gray1Color = const Color(0xFFFFFFFF);
  static Color Gray2Color = const Color(0xFFC7C7CC);
  static Color Gray3Color = const Color(0xFF8E8E93);
  static Color Gray4Color = const Color(0xFF48484A);
  static Color Gray5Color = const Color(0xFF3A3A3C);
  static Color Gray6Color = const Color(0xFF0A0A0B);
  static Color Gray7Color = const Color(0xFF1C1C1E);

  static void applyTheme() {
    CBColors.PrimaryColor = PrimaryColor;
    CBColors.UnselectedColor = UnselectedColor;
    CBColors.BackgroundColor = BackgroundColor;
    CBColors.NavigationBarBackgroundColor = NavigationBarBackgroundColor;
    CBColors.NavigationBarTextColor = NavigationBarTextColor;
    CBColors.PrimaryLabelTextColor = PrimaryLabelTextColor;
    CBColors.ListItemBackgroundColor = ListItemBackgroundColor;
    CBColors.PrimaryButtonTextColor = PrimaryButtonTextColor;
    CBColors.DessertFoodTypeColor = DessertFoodTypeColor;
    CBColors.MainDishFoodTypeColor = MainDishFoodTypeColor;
    CBColors.SoupFoodTypeColor = SoupFoodTypeColor;
    CBColors.UnknownFoodTypeColor = UnknownFoodTypeColor;
    CBColors.ImageBorderColor = ImageBorderColor;
    CBColors.FormFrameBackgroundColor = FormFrameBackgroundColor;
    CBColors.FormEntryTextColor = FormEntryTextColor;
    CBColors.FormEntryBackgroundColor = FormEntryBackgroundColor;
    CBColors.FormEntryBorderColor = FormEntryBorderColor;
    CBColors.ErrorColor = ErrorColor;

    CBColors.Gray1Color = Gray1Color;
    CBColors.Gray2Color = Gray2Color;
    CBColors.Gray3Color = Gray3Color;
    CBColors.Gray4Color = Gray4Color;
    CBColors.Gray5Color = Gray5Color;
    CBColors.Gray6Color = Gray6Color;
    CBColors.Gray7Color = Gray7Color;
  }
}
