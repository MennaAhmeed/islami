import 'package:flutter/material.dart';
import 'package:islami/home/ahadeth/hadeth_details.dart';
import 'package:islami/my_theme.dart';
import 'hadeth_tab.dart';

class HadethItem extends StatelessWidget {
  Hadeth hadeth;  //object from Hadeth class aly feh title ,content
  HadethItem(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: (){
       Navigator.pushNamed(context, HadethDetails.routeName,
       arguments: hadeth, //hadeth aly shayl title w al content
       );
        },
        child: Container(
          padding: EdgeInsets.all(12),
          child:Text(hadeth.title,
            textDirection: TextDirection.rtl,
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
