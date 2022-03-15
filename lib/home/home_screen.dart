import 'package:flutter/material.dart';
import 'package:islami/home/ahadeth/hadeth_tab.dart';
import 'package:islami/home/providers/app_provider.dart';
import 'package:islami/home/quran/quran_tab.dart';
import 'package:islami/home/tabs/radio_tab.dart';
import 'package:islami/home/tabs/sebha_tab.dart';
import 'package:islami/home/tabs/settings/settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'homescreen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);
    return Stack(
      children: [
        Image.asset(
        provider.getMainBAckground(),
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
             AppLocalizations.of(context)!.islami,
              style: Theme
                  .of(context)
                  .textTheme
                  .headline1,
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: currentindex,
              onTap: (index){
                currentindex=index;
                setState(() {
                });
              },
              items: [
                BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.quran,
                  icon: ImageIcon(AssetImage('assets/images/quran.png'),
                  ),
                ),
                BottomNavigationBarItem(
                 label:AppLocalizations.of(context)!.tasbeh ,
                  icon: ImageIcon(AssetImage('assets/images/sebha.png'),
                  ),
                ),
                BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.hadeth,
                  icon: ImageIcon(AssetImage('assets/images/hadeth.png'),
                  ),
                ),
                BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.radio,
                  icon: ImageIcon(AssetImage('assets/images/radio.png'),
                  ),
                ),
                BottomNavigationBarItem(
                  label:"settings",
                  icon: Icon(Icons.settings),
                  ),
              ],
            ),
          ),
          body: tabs[currentindex],
        ),
      ],
    );
  }
  var tabs = [
    QuranTab(),
    SebhaTab(),
    HadethTab(),
    RadioTab(),
    SettingsTab(),
  ];
}
