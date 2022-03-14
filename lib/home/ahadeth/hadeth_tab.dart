
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/ahadeth/ahadeth_item.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> hadethList = [];

  @override
  Widget build(BuildContext context) {
    loadHadethFile();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/hadeth_header.png'),
          Divider(
            color: Theme.of(context).primaryColor,
          thickness: 3,
          ),
          Text('Ahadeth',
          style: Theme.of(context).textTheme.bodyText1,),
          Divider(
            color: Theme.of(context).primaryColor,
          thickness: 3,
          ),
        Expanded(
            child: hadethList.isEmpty ? Center(child: CircularProgressIndicator()) : ListView.separated(
              separatorBuilder: (buildContext, index) {
                return Container(
                  height: 1,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  width: double.infinity,
                  color: Theme.of(buildContext).primaryColor,
                );
              },
              itemBuilder: (_, index) {
                return HadethItem(hadethList[index]);
              },
              itemCount: hadethList.length,
            )),
      ],
    );
  }

  void loadHadethFile() async {
    List<Hadeth> allHadeth = [];
    String content = await rootBundle.loadString('assets/files/ahadeth.txt'); //reading file
    List<String> singleHadeth = content.trim().split('#'); //34an n2sm kol hadeth lwhdo kol mayla2y # yb2a kda lhadeth khls

    for (int i = 0;i<singleHadeth.length;i++) {
      List<String> lines = singleHadeth[i].trim().split('\n');
      String title = lines[0]; //title
      if (title.trim().isEmpty) continue; // lw al title empty ykml my3mlsh hga
      lines.removeAt(0);  //34an nshel al title w yakhod al content bs
      String content = lines.join(' ');
      allHadeth.add(Hadeth(title, content));
    }
    hadethList = allHadeth;
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;
  Hadeth(this.title, this.content);
}