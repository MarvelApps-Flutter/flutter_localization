import 'package:flutter/material.dart';
import 'package:localization_app/main.dart';

import '../helpers/constants.dart';

class BottomNavBar extends StatefulWidget {
  int index;
  @override
  _BottomNavBarState createState() => _BottomNavBarState();

  BottomNavBar({required this.index});
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 20.0, // soften the shadow
              spreadRadius: 10.0, //extend the shadow
              offset: Offset(
                5.0, // Move to right 10  horizontally
                15.0, // Move to bottom 10 Vertically
              ),
            )
          ],
          color: Colors.white70,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      height: MediaQuery.of(context).size.height * 0.085,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                MyApp.of(context)?.setLocale(Locale(HINDI_LANG_CODE));
              },
              child: Column(
                children: [
                  Icon(
                    Icons.language,
                    color: MyApp.of(context)?.currentLocale ==
                                Locale(HINDI_LANG_CODE) ||
                            MyApp.of(context)?.localeName == HINDI_LANG_CODE
                        ? Colors.red
                        : Colors.black,
                  ),
                  Text(
                    HINDI_LANGUAGE_LABEL,
                    style: TextStyle(
                        color: MyApp.of(context)?.currentLocale ==
                                    Locale(HINDI_LANG_CODE) ||
                                MyApp.of(context)?.localeName == HINDI_LANG_CODE
                            ? Colors.red
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: MyApp.of(context)?.currentLocale ==
                                    Locale(HINDI_LANG_CODE) ||
                                MyApp.of(context)?.localeName == HINDI_LANG_CODE
                            ? 15
                            : 12),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                MyApp.of(context)?.setLocale(Locale(ENGLISH_LANG_CODE));
              },
              child: Column(
                children: [
                  Icon(Icons.language,
                      color: MyApp.of(context)?.currentLocale ==
                                  Locale(ENGLISH_LANG_CODE) ||
                              MyApp.of(context)?.localeName == ENGLISH_LANG_CODE
                          ? Colors.red
                          : Colors.black),
                  Text(ENGLISH_LANGUAGE_LABEL,
                      style: TextStyle(
                          color: MyApp.of(context)?.currentLocale ==
                                      Locale(ENGLISH_LANG_CODE) ||
                                  MyApp.of(context)?.localeName ==
                                      ENGLISH_LANG_CODE
                              ? Colors.red
                              : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: MyApp.of(context)?.currentLocale ==
                                      Locale(ENGLISH_LANG_CODE) ||
                                  MyApp.of(context)?.localeName ==
                                      ENGLISH_LANG_CODE
                              ? 15
                              : 12))
                ],
              ),
            ),
            InkWell(
              onTap: () {
                MyApp.of(context)?.setLocale(Locale(SPANISH_LANG_CODE));
              },
              child: Column(
                children: [
                  Icon(
                    Icons.language,
                    color: MyApp.of(context)?.currentLocale ==
                                Locale(SPANISH_LANG_CODE) ||
                            MyApp.of(context)?.localeName == SPANISH_LANG_CODE
                        ? Colors.red
                        : Colors.black,
                  ),
                  Text(SPANISH_LANGUAGE_LABEL,
                      style: TextStyle(
                          color: MyApp.of(context)?.currentLocale ==
                                      Locale(SPANISH_LANG_CODE) ||
                                  MyApp.of(context)?.localeName ==
                                      SPANISH_LANG_CODE
                              ? Colors.red
                              : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: MyApp.of(context)?.currentLocale ==
                                      Locale(SPANISH_LANG_CODE) ||
                                  MyApp.of(context)?.localeName ==
                                      SPANISH_LANG_CODE
                              ? 15
                              : 12))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
