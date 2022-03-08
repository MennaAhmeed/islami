import 'package:flutter/material.dart';
import 'package:islami/home/tabs/sura_details.dart';

class verseItem extends StatelessWidget {
  String text;
  int index;
  verseItem(this.text,this.index);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(12),
        child:Text('$text ($index)',
          style: Theme.of(context).textTheme.bodyText1,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
