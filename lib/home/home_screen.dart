import 'package:flutter/material.dart';
import 'package:islami/home/tabs/hadeth_tab.dart';
import 'package:islami/home/tabs/quran_tab.dart';
import 'package:islami/home/tabs/radio_tab.dart';
import 'package:islami/home/tabs/sebha_tab.dart';
import 'package:islami/my_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'homescreen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/main_background.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Islami',
                style: Theme
                    .of(context)
                    .textTheme
                    .headline1,
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentindex,
            onTap: (index){
              currentindex=index;
              setState(() {
              });
            },
            backgroundColor: MyThemeData.colorGold,
            items: [
              BottomNavigationBarItem(
                backgroundColor: MyThemeData.colorGold,
                label: 'Quran',
                icon: ImageIcon(AssetImage('assets/images/quran.png'),
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: MyThemeData.colorGold,
                label: 'Tasbeh',
                icon: ImageIcon(AssetImage('assets/images/sebha.png'),
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: MyThemeData.colorGold,
                label: 'Hadeth',
                icon: ImageIcon(AssetImage('assets/images/hadeth.png'),
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: MyThemeData.colorGold,
                label: 'Radio',
                icon: ImageIcon(AssetImage('assets/images/radio.png'),
                ),
              ),
            ],
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
  ];
}
