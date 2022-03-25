import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:localization_app/main.dart';
import 'package:localization_app/screens/main_page_en.dart';
import 'package:localization_app/screens/main_page_es.dart';
import 'package:localization_app/screens/main_page_hindi.dart';

class BottomNavBar extends StatefulWidget {
  int index;
  @override
  _BottomNavBarState createState() => _BottomNavBarState();

  BottomNavBar({required this.index});
}

class _BottomNavBarState extends State<BottomNavBar> {
  //int index = 0;

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
      // color: Colors.black,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  widget.index = 1;
                });
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HindiPage()));
                setState(() {
                  widget.index = 1;
                });
              },
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.language,
                    color: widget.index == 1 ? Colors.red : Colors.black,
                  ),
                  Text(
                    "हिन्दी",
                    style: TextStyle(
                        color: widget.index == 1 ? Colors.red : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: widget.index == 1 ? 15 : 12),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  widget.index = 2;
                });
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => EnglishPage()));
                setState(() {
                  widget.index = 2;
                });
              },
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Icon(Icons.language,
                      color: widget.index == 2 ? Colors.red : Colors.black),
                  Text("English",
                      style: TextStyle(
                          color: widget.index == 2 ? Colors.red : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: widget.index == 2 ? 15 : 12))
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  widget.index = 3;
                });
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SpanishPage()));
                setState(() {
                  widget.index = 3;
                });
              },
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Icon(Icons.language,
                      color: widget.index == 3 ? Colors.red : Colors.black),
                  Text("Español",
                      style: TextStyle(
                          color: widget.index == 3 ? Colors.red : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: widget.index == 3 ? 15 : 12))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
