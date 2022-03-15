import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/home/ahadeth/hadeth_details.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/home/providers/app_provider.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';
import 'home/quran/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void main(){
  runApp(
      ChangeNotifierProvider(
          create:(buildContext){
            return AppProvider();
          },
          child: MyApp()
      )
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);
    return MaterialApp(
      title:'Islami',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale(provider.appLanguage),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName:(buildContext)=>HomeScreen(),
        SuraDetails.routeName:(buildContext)=>SuraDetails(),
        HadethDetails.routeName:(buildContext)=>HadethDetails(),
      },
      initialRoute:HomeScreen.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme:MyThemeData.darkTheme,
      themeMode: provider.themeMode,
    );
  }
}
