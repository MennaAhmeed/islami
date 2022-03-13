import 'package:flutter/material.dart';
import 'package:islami/home/tabs/hadeth_details.dart';

class HadethItem extends StatelessWidget {
  String ahadethName;
  int index;
  HadethItem(this.ahadethName, this.index);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context,HadethDetails.routeName,
            arguments: hadethDetailsArgs(ahadethName: ahadethName,index: index),
          );
        },
        child: Container(
          padding: EdgeInsets.all(12),
          child: Text(
            ahadethName,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
