import 'package:flutter/material.dart';

class MyThemeData{
  static const colorBlack=Color.fromARGB(255, 36, 36, 36);
  static const colorGold=Color.fromARGB(255, 183, 147, 95);

  static var lightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: colorBlack,
      ),
      color: Colors.transparent,
      elevation: 0,

    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        color: colorBlack,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(
        fontSize: 24,
        color: colorBlack,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colorGold,
      selectedItemColor: colorBlack,
      unselectedItemColor: Colors.white,
    ),
  );
  static var darkTheme=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        color: Colors.transparent
    ),
  );
}