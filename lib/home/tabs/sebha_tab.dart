import 'package:flutter/material.dart';
import 'package:islami/home/providers/app_provider.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter=0;
  List<String> tasbehList=[
    'سبحان الله','الحمدلله','الله أكبر','أستغفر الله',
    'اللهم صلى وسلم وبارك على سيدنا محمد','لا اله الا الله',
    'لا حول ولا قوة الا بالله'];
  int index=0;
  double angle=0.0;
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);
    return Container(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Center(
                child: Image.asset(
                  provider.getsebhaheadimage(),
                width: 73,height: 105,
                ),
              ),
              InkWell(
                onTap: (){
                  onTasbehClick();
                },
                child: Container(
                    margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.09),
                    child: Center(child: Transform.rotate(
                      angle: angle,
                        child: Image.asset(
                          provider.getsebhaimage(),
                          width: 200,height: 204,)),)),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Text(AppLocalizations.of(context)!.numberofcounters ,
            style: Theme.of(context).textTheme.bodyText1,),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color:
              provider.themeMode==ThemeMode.light?MyThemeData.colorGold:MyThemeData.colorYellow,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text('$counter',
            style:Theme.of(context).textTheme.bodyText1),

            ),
          SizedBox(height: 15,),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
           decoration: BoxDecoration(
             color:
             provider.themeMode==ThemeMode.light?MyThemeData.colorGold:MyThemeData.colorYellow,
             borderRadius: BorderRadius.circular(25),
           ),
           child: Text('${tasbehList[index]}',
             style:Theme.of(context).textTheme.bodyText1,
             ),
           ),
         ],
      ),
    );
  }

  void onTasbehClick(){
    counter++;
    if(counter%33==0){
      index ++;
    }
    if(counter%231==0){
      index=0;
    }
    setState(() {
      angle+=20;
    });
  }
}
