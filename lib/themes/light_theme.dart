// ignore_for_file: non_constant_identifier_names

import 'dart:ui';

import 'package:cookbook/themes/colors.dart';

class LightTheme {
  static Color PrimaryColor = const Color(0xff00AE4B);
  static Color UnselectedColor = const Color(0xff888888);
  static Color BackgroundColor = const Color(0xffFFFFFF);
  static Color NavigationBarBackgroundColor = const Color(0xff3A3A3A);
  static Color NavigationBarTextColor = const Color(0xffFFFFFF);
  static Color PrimaryLabelTextColor = const Color(0xff000000);
  static Color ListItemBackgroundColor = const Color(0xffF8F8F8);
  static Color PrimaryButtonTextColor = const Color(0xffFFFFFF);
  static Color DessertFoodTypeColor = const Color(0xffF868AB);
  static Color MainDishFoodTypeColor = const Color(0xff00AE4B);
  static Color SoupFoodTypeColor = const Color(0xffED7500);
  static Color UnknownFoodTypeColor = const Color(0xffF8F8F8);
  static Color ImageBorderColor = const Color(0xff707070);
  static Color FormFrameBackgroundColor = const Color(0xffD5D5D5);
  static Color FormEntryTextColor = const Color(0xff000000);
  static Color FormEntryBackgroundColor = const Color(0xffF8F8F8);
  static Color FormEntryBorderColor = const Color(0xffE4E4E4);
  static Color ErrorColor = const Color(0xffFF0000);

  static Color Gray1Color = const Color(0xff0A0A0B);
  static Color Gray2Color = const Color(0xff54585A);
  static Color Gray3Color = const Color(0xff82898C);
  static Color Gray4Color = const Color(0xffB7BBBD);
  static Color Gray5Color = const Color(0xffD9DADB);
  static Color Gray6Color = const Color(0xffFAFAFA);
  static Color Gray7Color = const Color(0xffFFFFFF);

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
