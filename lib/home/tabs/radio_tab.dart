import 'package:flutter/material.dart';
import 'package:islami/home/providers/app_provider.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);
    return Container(
   child:Column(
     children: [
       SizedBox(height: 50,),
       Image.asset('assets/images/radio_header.png'),
       Text(AppLocalizations.of(context)!.quranradio,
         style:TextStyle(
             color: provider.themeMode==ThemeMode.light?MyThemeData.colorGold:MyThemeData.colorYellow,
           fontSize: 25
         ),),
       SizedBox(height: 120,),
       Image.asset('assets/images/radiobtn.png'),
     ],
   ),
    );
  }
}
