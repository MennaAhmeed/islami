import 'package:flutter/material.dart';
import 'package:islami/home/ahadeth/hadeth_details.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/my_theme.dart';
import 'home/quran/sura_details.dart';

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
        HadethDetails.routeName:(buildContext)=>HadethDetails(),
      },
      initialRoute:HomeScreen.routeName,
      theme: MyThemeData.lightTheme,
    );
  }
}
