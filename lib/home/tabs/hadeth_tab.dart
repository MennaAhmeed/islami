import 'package:flutter/material.dart';
import 'package:islami/home/tabs/hadeth_item.dart';

import '../../my_theme.dart';

class HadethTab extends StatelessWidget {
  List<String> ahadethNames=[
    'الحديث الثالث عشر','الحديث الثانى عشر','الحديث الحادى عشر',
    'الحديث العاشر','الحديث التاسع','الحديث الثامن',
    'الحديث السابع','الحديث السادس','الحديث الخامس',
    'الحديث الرابع','الحديث الثالث','الحديث الثانى','الحديث الاول'];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
              child: Image.asset('assets/images/hadeth_header.png'),),
          Expanded(
            child: ListView.separated(
                itemBuilder: (buildContext,index){
             return HadethItem(ahadethNames[index],index);
                },
                separatorBuilder: (buildContext,index){
                  return Container(
                  height: 1,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  color: MyThemeData.colorGold,
                  );
    },
                itemCount:ahadethNames.length ),
          )
        ],
      ),
    );
  }
}
