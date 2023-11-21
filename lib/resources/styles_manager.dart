import 'package:flutter/material.dart';

import 'fonts_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String? fontFamily, Color color, FontWeight fontWeight) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily ?? FontsConstants.fontFamily,
    color: color,
    fontWeight: fontWeight,
  );
}

//Light Style
TextStyle getLightStyle({double fontSize = 10, required Color color}) {
  return _getTextStyle(
      fontSize, FontsConstants.fontFamily, color, FontWeightManager.light);
}

//regular  style
TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontsConstants.fontFamily,
    color,
    FontWeightManager.regular,
  );
}

//medium Style
TextStyle getMediumStyle({double fontSize = 12, required Color color}) {
  return _getTextStyle(
      fontSize, FontsConstants.fontFamily, color, FontWeightManager.medium);
}

//SemiBold Style
TextStyle getSemiBold({double fontSize = 12, required Color color}) {
  return _getTextStyle(
      fontSize, FontsConstants.fontFamily, color, FontWeightManager.semiBold);
}

//Bold Style
TextStyle getBoldStyle({double fontSize = 12, required Color color}) {
  return _getTextStyle(
      fontSize, FontsConstants.fontFamily, color, FontWeightManager.bold);
}
