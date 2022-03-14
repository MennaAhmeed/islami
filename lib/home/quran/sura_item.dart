import 'package:flutter/material.dart';
import 'package:islami/home/quran/sura_details.dart';

class SuraItem extends StatelessWidget {
  String suraName;
  int index;
  SuraItem(this.suraName,this.index);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: (){
       Navigator.pushNamed(context, SuraDetails.routeName,
       arguments: suraDetailsArgs(suraName: suraName, index: index),
       );
        },
        child: Container(
          padding: EdgeInsets.all(12),
          child:Text(suraName,style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
