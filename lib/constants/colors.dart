import 'package:flutter/material.dart';

Color themeColor1 = Color(0xff50513f);
Color themeColor2 = Color(0xff47513f);
Color themeColor3 = Color(0xff5e9338);
Color themeColor4 = Color(0xff38933f);
Color themeColor5 = Color(0xffefec26);
Color themeColor6 = Color(0xffa0f235);
Color white = Colors.white;
Color greyLight = Colors.grey[50];
Color greyDeep = Colors.grey[500];

/// Theme color scheme
ThemeData theme = ThemeData(
  primaryColor: themeColor2,
  buttonColor: themeColor3,
  cursorColor: themeColor5,
  // dividerColor: foregroundColor,
  focusColor: themeColor5,
  fontFamily: "Raleway",
  unselectedWidgetColor: themeColor3,
  colorScheme: ColorScheme.light(primary: themeColor2),
  // accentColor: foregroundColor,
  splashColor: themeColor5,
);
