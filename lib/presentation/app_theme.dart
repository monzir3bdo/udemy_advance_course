import 'package:clean_architecture/presentation/colors_manager.dart';
import 'package:clean_architecture/presentation/fonts_manager.dart';
import 'package:clean_architecture/presentation/styles_manager.dart';
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
    splashColor: ColorsManager.primaryWithOpacity70,
    //Card Theme
    cardTheme: CardTheme(
      color: Colors.white,
      shadowColor: ColorsManager.grey,
      elevation: AppSize.s4,
    ),
    //Appbar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorsManager.primaryWithOpacity70,
      centerTitle: true,
      titleTextStyle: getRegularStyle(
        color: ColorsManager.white,
        fontSize: FontSize.s16,
      ),
    ),
    //Button Theme
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      buttonColor: ColorsManager.primary,
      disabledColor: ColorsManager.grey1,
      splashColor: ColorsManager.primaryWithOpacity70,
    ),
    //elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          color: Colors.white,
        ),
        backgroundColor: ColorsManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),
    //text Theme
    textTheme: TextTheme(
      displayLarge:
          getSemiBold(color: ColorsManager.darkGrey, fontSize: FontSize.s16),
      titleMedium: getMediumStyle(
          color: ColorsManager.lightGrey, fontSize: FontSize.s14),
      bodySmall: getRegularStyle(color: ColorsManager.grey1),
      bodyLarge: getRegularStyle(color: ColorsManager.grey),
    ),
  );
}
