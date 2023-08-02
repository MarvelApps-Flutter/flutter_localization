import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Widget orderDetails(BuildContext context, String name, String quantity,
    String price, String description, String imagePath) {
  return Container(
    padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
    //decoration: BoxDecoration(border: Border.all()),
    child: Column(
      children: [
        Text(
          name,
          // ignore: prefer_const_constructors
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Image.asset(
            imagePath,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  description,
                  style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              Text(
                AppLocalizations.of(context)!.quantity.toString() +
                    " : " +
                    quantity,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    AppLocalizations.of(context)!.price.toString() +
                        " : " +
                        price.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
