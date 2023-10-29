import 'package:clean_architecture/presentation/colors_manager.dart';
import 'package:clean_architecture/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
      primaryColor: ColorsManager.primary,
      primaryColorLight: ColorsManager.primaryWithOpacity70,
      primaryColorDark: ColorsManager.darkGrey,
      disabledColor: ColorsManager.grey1,
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: ColorsManager.grey),
      //Card Theme
      cardTheme: CardTheme(
        color: Colors.white,
        shadowColor: ColorsManager.grey,
        elevation: AppSize.s4,
      ));
}
