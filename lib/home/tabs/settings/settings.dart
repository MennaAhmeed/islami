import 'package:flutter/material.dart';
import 'package:islami/home/providers/app_provider.dart';
import 'package:islami/home/tabs/settings/theme_bottom_sheet.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'language_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {
static const String routeName='settingstab';

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(AppLocalizations.of(context)!.language,
              style:TextStyle(
                  color: provider.themeMode==ThemeMode.light?MyThemeData.colorGold:MyThemeData.colorYellow,
              ),
            ),
            InkWell(
              onTap: (){
                showLanguageBottomSheet();
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: provider.themeMode==ThemeMode.light?MyThemeData.colorWhite:MyThemeData.blueBlack,
                  border: Border.all(color: Theme.of(context).primaryColor),
                ),
                child: Text(
                provider.appLanguage=="en"?"English":"العربية",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontSize: 18,
                ),
                ),
              ),
            ),
            Text(AppLocalizations.of(context)!.theme,
              style:TextStyle(
                  color: provider.themeMode==ThemeMode.light?MyThemeData.colorGold:MyThemeData.colorYellow,
              ),
            ),
            InkWell(
              onTap: (){
                showThemeBottomSheet();
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: provider.themeMode==ThemeMode.light?MyThemeData.colorWhite:MyThemeData.blueBlack,
                  border: Border.all(color: Theme.of(context).primaryColor),
                ),
                child: Text(
                provider.themeMode==ThemeMode.light?"Light":"Dark",
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
      ),
    );
  }

void showLanguageBottomSheet(){
    showModalBottomSheet(
        context:context,
        builder: (buildContext){
          return LanguageBottomSheet();
        });
}

  void showThemeBottomSheet(){
    showModalBottomSheet(
        context:context,
        builder: (buildContext){
          return ThemeBottomSheet();
        });
  }



}
