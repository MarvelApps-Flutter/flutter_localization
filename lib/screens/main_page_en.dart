import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization_app/main.dart';

class EnglishPage extends StatefulWidget {
  const EnglishPage({Key? key}) : super(key: key);

  @override
  _EnglishPageState createState() => _EnglishPageState();
}

class _EnglishPageState extends State<EnglishPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      // ignore: prefer_const_literals_to_create_immutables
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      //theme: ThemeData(primarySwatch: Colors.purple),
      supportedLocales: [
        Locale('hi', ''), // Hindi, no country code
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
      //localeResolutionCallback: ,
      locale: Locale('en', ''),
      home: MyHomePage(
        index: 2,
      ),
    );
    // );
  }
}
