import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:localization_app/helpers/constants.dart';
import 'package:localization_app/models/orders_model.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization_app/share/app_text_styles.dart';
import 'package:localization_app/share/reusable_widgets.dart';
import 'package:localization_app/widgets/order_details.dart';

Widget bodySection(BuildContext context) {
  List<Orders> list = [
    Orders(
        orderName: AppLocalizations.of(context)!.breadName,
        orderImagePath: BREAD_IMAGE,
        quantity: AppLocalizations.of(context)!.breadQuantity,
        orderDescription: AppLocalizations.of(context)!.breadDecription,
        price: AppLocalizations.of(context)!.breadPrice),
    Orders(
        orderName: AppLocalizations.of(context)!.juiceName,
        orderImagePath: ORANGE_JUICE_IMAGE,
        quantity: AppLocalizations.of(context)!.juiceQuantity,
        orderDescription: AppLocalizations.of(context)!.juiceDecription,
        price: AppLocalizations.of(context)!.juicePrice),
    Orders(
        orderName: AppLocalizations.of(context)!.butterName,
        orderImagePath: BUTTER_IMAGE,
        quantity: AppLocalizations.of(context)!.butterQuantity,
        orderDescription: AppLocalizations.of(context)!.butterDecription,
        price: AppLocalizations.of(context)!.butterPrice)
  ];
  return Container(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return
                //Container();
                Padding(
              padding: const EdgeInsets.all(8.0),
              child: orderDetails(
                  context,
                  list[index].orderName,
                  list[index].quantity,
                  list[index].price,
                  list[index].orderDescription,
                  list[index].orderImagePath),
            );
          }));
}
