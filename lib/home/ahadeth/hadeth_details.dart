import 'package:flutter/material.dart';
import 'package:islami/home/providers/app_provider.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';
import 'hadeth_tab.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'hadethdetails';
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth; //hadeth al class aly gwah title w content
    return Stack(
      children: [
        Image.asset(
        provider.getMainBAckground(),
         width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              '${args.title}',
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          body: Container(
            margin: EdgeInsets.symmetric(vertical: 64, horizontal: 24),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color:provider.themeMode==ThemeMode.light?MyThemeData.colorWhite:MyThemeData.blueBlack,
              borderRadius: BorderRadius.circular(12),
            ),
            child: SingleChildScrollView(
              child: Text(
                args.content,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 24),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
