
import 'package:flutter/material.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/home/tabs/sura_details.dart';
import 'package:islami/my_theme.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Islami',
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName:(buildContext)=>HomeScreen(),
        SuraDetails.routeName:(buildContext)=>SuraDetails(),
      },
      initialRoute:HomeScreen.routeName,
      theme: MyThemeData.lightTheme,
    );
  }
}
