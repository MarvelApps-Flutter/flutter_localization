import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization_app/models/food_model.dart';
import 'package:localization_app/share/app_text_styles.dart';
import 'package:localization_app/share/reusable_widgets.dart';
import 'package:localization_app/widgets/food_category.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

Widget homeScreenScaffoldBody(BuildContext context, List<Widget> imageSliders) {
  List<FoodData> foodList = [
    FoodData(
        id: "1",
        name: AppLocalizations.of(context)!.samosaName,
        imagePath: "assets/images/samosa.jpeg",
        price: 28.0),
    FoodData(
        id: "2",
        name: AppLocalizations.of(context)!.vegRollName,
        imagePath: "assets/images/veg_roll.jpeg",
        price: 100.0),
    FoodData(
        id: "3",
        name: AppLocalizations.of(context)!.paneerWrapName,
        imagePath: "assets/images/paneer_wrap.jpeg",
        price: 120.0),
    FoodData(
        id: "4",
        name: AppLocalizations.of(context)!.vegBurgerName,
        imagePath: "assets/images/veg_burger.jpeg",
        price: 98.0)
  ];
  return SingleChildScrollView(
      child: Column(
    children: [
      buildSizedBoxWidget(5),
      CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: imageSliders),
      buildSizedBoxWidget(5),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              // "Food Category"
              AppLocalizations.of(context)!.foodCategory,
              style: AppTextStyles.boldTextStyle,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                // "View All",
                AppLocalizations.of(context)!.viewAllBtnText,
                style: AppTextStyles.mediumTextStyle,
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
