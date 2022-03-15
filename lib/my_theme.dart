import 'package:flutter/material.dart';

class MyThemeData{
  static const colorBlack=Color.fromARGB(255, 36, 36, 36);
  static const colorGold=Color.fromARGB(255, 183, 147, 95);
  static const blueBlack=Color(0xFF141A2E);
  static const colorWhite=Colors.white;
  static const colorYellow=Color(0xFFFACC1D);

  static var lightTheme=ThemeData(
    primaryColor: colorGold,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: colorBlack,
      ),
      color: Colors.transparent,
      elevation: 0,

    ),
    textTheme: TextTheme(
      subtitle1: TextStyle(
          fontSize: 24,
          color: colorBlack
        ),
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
    primaryColor: blueBlack,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: colorWhite,
      ),
      color: Colors.transparent,
      elevation: 0,

    ),
    textTheme: TextTheme(
      subtitle1: TextStyle(
          fontSize: 24,
          color: colorWhite,
      ),
      headline1: TextStyle(
        fontSize: 30,
        color: colorWhite,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(
        fontSize: 24,
        color: colorWhite,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: blueBlack,
      selectedItemColor: colorYellow,
      unselectedItemColor: Colors.white,
    ),
  );
}