import 'package:localization_app/helpers/constants.dart';

class Orders {
  String orderName;
  String orderImagePath;
  String quantity;
  String orderDescription;
  String price;
  Orders(
      {required this.orderName,
      required this.orderImagePath,
      required this.quantity,
      required this.orderDescription,
      required this.price});
}

// List<Orders> orderList = [
//   Orders(
//       orderName: "Fresh Whole Wheat Bread",
//       orderImagePath: BREAD_IMAGE,
//       quantity: 500,
//       price: 50,
//       orderDescription:
//           "Whole wheat bread or wholemeal bread is a type of bread made using flour that is partly or entirely milled from whole or almost-whole wheat grains, see whole-wheat flour and whole grain. It is one kind of brown bread."),
//   Orders(
//       orderName: "Fresh Butter",
//       orderImagePath: BUTTER_IMAGE,
//       quantity: 500,
//       price: "200",
//       orderDescription:
//           " Unsalted Butter is made from fresh cream and nothing else. It is Fresh Butter in its purest form, and doesn't contain any salt at all. With lower moisture content than most other butters, it is an essential cooking and baking ingredient making it especially helpful when making pastries and puddings. 100% Natural !"),
//   Orders(
//       orderName: "Fresh Orange Juice",
//       orderImagePath: ORANGE_JUICE_IMAGE,
//       quantity: 1,
//       price: 150,
//       orderDescription:
//           "Oranges have been a favourite fruit flavour for all kinds of recipes, since forever. It’s loved by kids and grownups dig it too. Yet, it’s not just because they taste so yum. There are many other benefits of oranges in a diet. A normal orange, say about 180 grams,can give you enough Vitamin C to last for two days. Not just that, oranges are easily available, can be stored without a hassle and Real Fruit Power’s Orange flavour is as popular as the fruit itself. You can also check out the various mocktail recipes you can make with Real Fruit Power.")
// ];


