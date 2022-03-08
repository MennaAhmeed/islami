
import 'package:flutter/material.dart';
import 'package:islami/home_screen.dart';

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
      },
      initialRoute:HomeScreen.routeName,
    );
  }
}
