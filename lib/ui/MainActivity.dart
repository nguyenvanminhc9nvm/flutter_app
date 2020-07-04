import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/home/HomeFragment.dart';
import 'package:flutter_app/utils/localize/AppLocalizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MainActivity());

class MainActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // List all of the app's supported locales here
        supportedLocales: [
          Locale('vi', 'VN'),
          Locale('en', 'US'),

        ],
        // These delegates make sure that the localization data for the proper language is loaded
        localizationsDelegates: [
          // THIS CLASS WILL BE ADDED LATER
          // A class which loads the translations from JSON files
          AppLocalizations.delegate,
          // Built-in localization of basic text for Material widgets
          GlobalMaterialLocalizations.delegate,
          // Built-in localization for text direction LTR/RTL
          GlobalWidgetsLocalizations.delegate,
        ],
        // Returns a locale which will be used by the app
        localeResolutionCallback: (locale, supportedLocales) {
          // Check if the current device locale is supported
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          // If the locale of the device is not supported, use the first one
          // from the list (English, in this case).
          return supportedLocales.first;
        },
        home: HomeFragment(),
      );
  }
}

