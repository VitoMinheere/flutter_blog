import 'package:flutter/material.dart';

darkTheme(context) {
  var main = Color(0xFF818D92);
  var darker = Color(0xFF59656F);
  var accent = Color(0xFF999AC6);
  var white = Color(0xFFF4EDED);

  var dusty = Color(0xFF96858F);
  var oxblood = Color(0xFF76323F);
  var lavendar = Color(0xFF6D7993);
  var paper = Color(0xFFD5D5D5);
  var tan = Color(0xFFC09F80);

  return ThemeData(
    fontFamily: 'GoogleSansRegular',
    primarySwatch: Colors.brown,
    primaryColor: main,
    canvasColor: main,
    accentColor: accent,
    disabledColor: Colors.grey,
    cardColor: darker,
    brightness: Brightness.dark,
    textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.black,
          displayColor: Colors.black,
        ),
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: ColorScheme.dark(),
          buttonColor: lavendar,
          splashColor: Colors.black,
        ),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );
}

lightTheme(context) {
  return ThemeData(
    fontFamily: 'GoogleSansRegular',
    primarySwatch: Colors.blue,
    primaryColor: Colors.white,
    accentColor: Colors.blue,
    disabledColor: Colors.grey,
    cardColor: Colors.grey,
    canvasColor: Colors.white,
    brightness: Brightness.light,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: ColorScheme.light(),
        buttonColor: Colors.blue,
        splashColor: Colors.white),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );
}
