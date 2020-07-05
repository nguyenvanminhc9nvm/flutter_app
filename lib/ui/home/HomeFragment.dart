


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/localize/AppLocalizations.dart';

class HomeFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    AppLocalizations.of(context).translate("title_image"),
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Text(
                  AppLocalizations.of(context).translate("title_image2"),
                  style: TextStyle(
                    color: Colors.grey[500]
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    final buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildBtnColumn(color, Icons.call, AppLocalizations.of(context).translate("title_section")),
          buildBtnColumn(color, Icons.access_alarm, AppLocalizations.of(context).translate("title_section")),
          buildBtnColumn(color, Icons.ac_unit, AppLocalizations.of(context).translate("title_section"))
        ],
      ),
    );

    final textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        AppLocalizations.of(context).translate("title_image6"),
        softWrap: true,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).translate("title_toolbar")),
      ),
      body: ListView(
        children: [
          Image.asset(
            "value/drawable/iamge.png",
            width: 600,
            height: 400,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection
        ],
      )
    );

  }

  Column buildBtnColumn(Color color, IconData call, String text)  {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(call, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            text,
            style: TextStyle(
              fontSize:  12,
              fontWeight: FontWeight.w400,
              color: color
            ),
          ),
        )
      ],
    );
  }



}

