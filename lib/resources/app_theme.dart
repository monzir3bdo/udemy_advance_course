import 'package:clean_architecture/resources/styles_manager.dart';
import 'package:clean_architecture/resources/values_manager.dart';
import 'package:flutter/material.dart';

import 'colors_manager.dart';
import 'fonts_manager.dart';

ThemeData getApplicationTheme() {
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
      shape: const StadiumBorder(),
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
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularStyle(color: ColorsManager.grey1),
      labelStyle: getMediumStyle(
        color: ColorsManager.darkGrey,
      ),
      errorStyle: getRegularStyle(
        color: ColorsManager.error,
      ),
      //enabled border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.grey,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
      ),
      //focus border
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
      ),
      //error border
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.error,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
      ),
      //focused error
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.error,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
      ),
    ),
  );
}
