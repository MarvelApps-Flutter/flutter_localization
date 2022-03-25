import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization_app/main.dart';

class HindiPage extends StatefulWidget {
  const HindiPage({Key? key}) : super(key: key);

  @override
  _HindiPageState createState() => _HindiPageState();
}

class _HindiPageState extends State<HindiPage> {
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
      // ignore: prefer_const_literals_to_create_immutables
      supportedLocales: [
        const Locale('hi', ''), // Hindi, no country code
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
      //localeResolutionCallback: ,
      locale: Locale('hi', ''),
      home: MyHomePage(
        index: 1,
      ),
    );
  }
}
