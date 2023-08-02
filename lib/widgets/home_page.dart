import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:localization_app/main.dart';
import 'package:localization_app/widgets/bottom_nav_bar.dart';
import 'package:localization_app/widgets/food_category.dart';

import '../helpers/constants.dart';
import '../models/food_model.dart';
import '../share/app_text_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          child: Text(
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
      bottomNavigationBar: bottomNavigationBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [homeScreenScaffoldBody(context, imageSliders)],
        ),
      ),
    );
  }

  Container bottomNavigationBar(BuildContext context) {
    print(MyApp.of(context)?.localeName);

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
                                  MyApp.of(context)?.localeName == "en"
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

  Widget buildFoodCategory(FoodData food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: FoodCategory(
          imagePath: food.imagePath,
          id: food.id,
          name: food.name,
          price: food.price),
    );
  }

  Widget homeScreenScaffoldBody(
      BuildContext context, List<Widget> imageSliders) {
    List<FoodData> foodList = [
      FoodData(
          id: "1",
          name: AppLocalizations.of(context)!.samosaName,
          imagePath: SAMOSA_IMAGE,
          price: 28.0),
      FoodData(
          id: "2",
          name: AppLocalizations.of(context)!.vegRollName,
          imagePath: VEG_ROLL_IMAGE,
          price: 100.0),
      FoodData(
          id: "3",
          name: AppLocalizations.of(context)!.paneerWrapName,
          imagePath: PANEER_WRAP_IMAGE,
          price: 120.0),
      FoodData(
          id: "4",
          name: AppLocalizations.of(context)!.vegBurgerName,
          imagePath: VEG_BURGER_IMAGE,
          price: 98.0)
    ];
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 5,
        ),
        CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: imageSliders),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  AppLocalizations.of(context)!.foodCategory,
                  style: AppTextStyles.boldTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    AppLocalizations.of(context)!.viewAllBtnText,
                    style: AppTextStyles.mediumTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Column(
          children: foodList.map(buildFoodCategory).toList(),
        )
      ],
    ));
  }
}
