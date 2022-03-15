import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{
String appLanguage='en';
ThemeMode themeMode=ThemeMode.light;

void changeLanguage(String languageCode){
  appLanguage=languageCode;
  notifyListeners();
}
void changetheme(ThemeMode themeMode){
  this.themeMode=themeMode;
  notifyListeners();
}
String getMainBAckground(){
  return themeMode==ThemeMode.light?
  'assets/images/main_background.png':
  'assets/images/bg_dark.png';
}
String getsebhaimage(){
  return themeMode==ThemeMode.light ? 'assets/images/bodyofsebha.png':
  'assets/images/bodyofsebha_dark.png';
}
String getsebhaheadimage(){
  return themeMode==ThemeMode.light ?
  'assets/images/headofsebha.png':'assets/images/headofsebha_dark.png';

}
}