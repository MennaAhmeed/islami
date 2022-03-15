import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
   child:Column(
     children: [
       SizedBox(height: 50,),
       Image.asset('assets/images/radio_header.png'),
       Text('اذاعة القران الكريم',
         style:TextStyle(
             color: MyThemeData.colorWhite,
           fontSize: 25
         ),),
       SizedBox(height: 150,),
       Image.asset('assets/images/radiobtn.png'),
     ],
   ),
    );
  }
}
