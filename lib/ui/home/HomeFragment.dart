import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/localize/AppLocalizations.dart';

class HomeFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).translate("title_toolbar")),
      ),
      body: Center(
        child: Text(AppLocalizations.of(context).translate("title_toolbar")),
      ),
    );
  }
  
}