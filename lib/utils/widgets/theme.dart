import 'package:flutter/material.dart';

import 'style.dart';

ThemeData appTheme(context) {
  var isDarkTheme = false;
  return ThemeData(
      scaffoldBackgroundColor:
          isDarkTheme ? ColorSets.colorWhite : ColorSets.colorBrand2,
      canvasColor: ColorSets.colorWhite,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: 'Raleway',
      primaryColor: isDarkTheme ? ColorSets.colorWhite : ColorSets.colorBrand2,
      accentColor: isDarkTheme ? ColorSets.colorBrand2 : ColorSets.colorBrand1,
      backgroundColor:
          isDarkTheme ? ColorSets.colorBrand2 : ColorSets.colorWhite,
      indicatorColor:
          isDarkTheme ? ColorSets.colorBrand1 : ColorSets.colorBrand2,
      buttonColor: isDarkTheme ? ColorSets.colorBrand1 : ColorSets.colorBrand2,
      hintColor: isDarkTheme ? ColorSets.colorBrand2 : ColorSets.colorBrand1,
      dividerColor: isDarkTheme ? ColorSets.colorWhite : ColorSets.colorDark,
      highlightColor:
          isDarkTheme ? ColorSets.colorBrand1 : ColorSets.colorBrand2,
      hoverColor: isDarkTheme ? ColorSets.colorBrand1 : ColorSets.colorBrand2,
      focusColor: isDarkTheme ? ColorSets.colorBrand1 : ColorSets.colorBrand2,
      disabledColor: Colors.grey,
      textSelectionTheme: TextSelectionThemeData(
        selectionColor:
            isDarkTheme ? ColorSets.colorWhite : ColorSets.colorBrand2,
      ),
      cardColor: isDarkTheme ? ColorSets.colorDark : ColorSets.colorWhite,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
      primarySwatch: Colors.grey,
      textTheme: TextTheme(
        caption: TextStyle(
            color: isDarkTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz4,
            height: FontValues.lh4,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2),
        headline1: TextStyle(
            color: isDarkTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz1,
            height: FontValues.lh1,
            fontWeight: FontWeight.w600),
        headline2: TextStyle(
            color: isDarkTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz2,
            height: FontValues.lh2,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5),
        headline3: TextStyle(
            color: isDarkTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz3,
            height: FontValues.lh3,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5),
        headline4: TextStyle(
            color: isDarkTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz4,
            height: FontValues.lh4,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5),
        headline5: TextStyle(
            color: isDarkTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz5,
            height: FontValues.lh5,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5),
        headline6: TextStyle(
            color: isDarkTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz6,
            height: FontValues.lh6,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5),
        bodyText1: TextStyle(
            color: isDarkTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz5,
            height: FontValues.lh5,
            letterSpacing: 1),
        bodyText2: TextStyle(
            color: isDarkTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz6,
            height: FontValues.lh6,
            letterSpacing: 1),
      ));
}
