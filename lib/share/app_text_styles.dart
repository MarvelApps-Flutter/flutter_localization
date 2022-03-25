import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const lightTextStyle = TextStyle(
      color: Colors.black54,
      fontWeight: FontWeight.w300,
      fontSize: 25,
      fontFamily: 'Roboto');

  static const boldTextStyle = TextStyle(
      fontSize: 20.0, fontWeight: FontWeight.w700, fontFamily: 'Roboto', );

  static const blackTextStyle = TextStyle(
    color: Colors.grey,
    fontFamily: 'Roboto',
    fontSize: 25.0,
    fontWeight: FontWeight.w900,
  );

  static const mediumTextStyle = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    fontFamily: 'Roboto',
    color: Colors.blue,
  );

  static const regularTextStyle =
  TextStyle(color: Colors.black54, fontFamily: 'Roboto',fontWeight: FontWeight.w400,);
}
