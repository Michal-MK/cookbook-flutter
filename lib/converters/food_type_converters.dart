import 'package:cookbook/api/lib/openapi.dart';
import 'package:cookbook/const/fa_icons.dart';
import 'package:cookbook/themes/colors.dart';
import 'package:flutter/material.dart';

extension FoodTypeExt on FoodType {
  String getIcon() {
    return switch (this) {
      FoodType.number1 => // Main dish
        FontAwesomeIcons.ConciergeBell,
      FoodType.number2 => // Soup
        FontAwesomeIcons.UtensilSpoon,
      FoodType.number3 => // Dessert
        FontAwesomeIcons.IceCream,
      _ => FontAwesomeIcons.Question
    };
  }

  Color getFoodColor() {
    return switch (this) {
      FoodType.number1 => // Main dish
        CBColors.MainDishFoodTypeColor,
      FoodType.number2 => // Soup
        CBColors.SoupFoodTypeColor,
      FoodType.number3 => // Dessert
        CBColors.DessertFoodTypeColor,
      _ => CBColors.UnknownFoodTypeColor
    };
  }
}
