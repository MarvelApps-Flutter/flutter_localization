import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FoodData {
  final String? id;
  final String? name;
  final String? imagePath;
  final double? price;

  FoodData({this.id, this.name, this.imagePath, this.price});
}

final foods = [
  FoodData(
      id: "1",
      name: "Samosa",
      imagePath: "assets/images/image1.png",
      price: 28.0),
  FoodData(
      id: "2",
      name: "Veg Roll",
      imagePath: "assets/images/image2.png",
      price: 100.0),
  FoodData(
    id: "3",
    name: "Paneer Wrap",
    imagePath: "assets/images/image3.png",
    price: 120.0,
  ),
  FoodData(
      id: "1",
      name: "Veg Burger",
      imagePath: "assets/images/image4.png",
      price: 98.0),
];

// List<FoodData> foodList = [
//   FoodData(
//     id: "1",
//     name: AppLocalizations.of(context)!.samosaName,
//     imagePath: "assets/images/image1.png",
//     price: 28.0

//   ),
//   FoodData(
//     id: "1",
//     name: AppLocalizations.of(context)!.vegRollName,
//     imagePath: "assets/images/image1.png",
//     price: 100.0
//   ),
//   FoodData(
//     id: "1",
//     name: AppLocalizations.of(context)!.paneerWrapName,
//     imagePath: "assets/images/image1.png",
//     price: 120.0
//   ),
//   FoodData(
//     id: "1",
//     name: AppLocalizations.of(context)!.vegBurgerName,
//     imagePath: "assets/images/image1.png",
//     price: 98.0
//   )
// ];
