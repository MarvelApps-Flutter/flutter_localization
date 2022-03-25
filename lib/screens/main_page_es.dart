import 'package:flutter/material.dart';
import 'package:localization_app/main.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SpanishPage extends StatefulWidget {
  const SpanishPage({Key? key}) : super(key: key);

  @override
  _SpanishPageState createState() => _SpanishPageState();
}

class _SpanishPageState extends State<SpanishPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      locale: Locale('es', ''),
      home: MyHomePage(index: 3),
    );
  }
}
