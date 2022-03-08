import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/tabs/verse_item.dart';

import '../../my_theme.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'suradetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String>verses = [];
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as suraDetailsArgs;
    if(verses.length==0)
    loadfile('${args.index+1}');
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                args.suraName,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          body: verses.length==0? CircularProgressIndicator():
          ListView.separated(itemBuilder: (buildContext,index){
            return verseItem(verses[index],index+1);
          },
              separatorBuilder: (buildContext,index){
            return Container(
              height: 1,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 24),
              color: MyThemeData.colorGold,
            );
              },
              itemCount: verses.length
          ),
        ),
      ],
    );
  }

  void loadfile(String fileName) async {
    String fileContent =
    await rootBundle.loadString('assets/files/$fileName.txt');
    List<String>verses = fileContent.split('\n');
    this.verses = verses;
    setState(() {
    });
  }
}
class suraDetailsArgs {
  String suraName;
  int index;
  suraDetailsArgs({required this.suraName, required this.index});
}
