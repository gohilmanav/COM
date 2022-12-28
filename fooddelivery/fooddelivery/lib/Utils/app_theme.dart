import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      dividerColor: Colors.black.withOpacity(0.2),
      
      primarySwatch: Colors.red,
      primaryColor: Color(0xffFF7000),
      backgroundColor: Colors.white,
      indicatorColor: Color(0xfffafafa),
      hintColor: Color(0xff838383),
      highlightColor: Color(0xffFCE192),
      hoverColor: Color(0xFF7B51D3),
      focusColor: Color(0xffA8DAB5),
      disabledColor: Color(0xFFffd200),
      cardColor: Colors.black,
      canvasColor: Color(0xff757575),
      bottomAppBarColor: Color(0xfffafafa),
      buttonTheme: Theme.of(context)
          .buttonTheme
          .copyWith(colorScheme: ColorScheme.light()),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
      ), textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.black),
    );
  }
}
