// import 'dart:html';
// import 'dart:js';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization_app/helpers/constants.dart';
import 'package:localization_app/widgets/bottom_nav_bar.dart';
import 'package:localization_app/widgets/home_body_section.dart';
import 'package:localization_app/widgets/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
  static _MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  Locale? currentLocale;
  String localeName = "en";
  //Platform.localeName.split("_").first;

  void setLocale(Locale value) {
    setState(() {
      currentLocale = value;
      localeName = value.languageCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
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
        locale: currentLocale,
        // Provider.of<LocaleProvider>(context, listen: true)
        //     .currentLocale,
        //  Locale('hi', ''),
        home: HomePage());
  }
}

class MyHomePage extends StatefulWidget {
  final int index;
  const MyHomePage({Key? key, required this.index}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imgList = [
    SAMOSA_IMAGE,
    VEG_ROLL_IMAGE,
    PANEER_WRAP_IMAGE,
    VEG_BURGER_IMAGE
  ];
  int pageIndex = 0;
  List<Widget> imageSliders = [];
  void initState() {
    imageSliders = imgList
        .map((item) => Container(
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(item, fit: BoxFit.cover, width: 400.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Center(
          // ignore: unnecessary_const
          child: Text(
            // home
            AppLocalizations.of(context)!.homeTitle,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        leading: IconButton(
          padding: const EdgeInsets.only(left: 30),
          onPressed: () {},
          icon: const Icon(Icons.menu),
          iconSize: 24,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 30),
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 24,
            color: Colors.black,
          ),
          IconButton(
            padding: const EdgeInsets.only(right: 30),
            onPressed: () {},
            icon: Icon(Icons.logout),
            iconSize: 24,
            color: Colors.black,
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        index: widget.index,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FlutterLogo(),
            homeScreenScaffoldBody(context, imageSliders)
          ],
        ),
      ),
    );
  }
}
